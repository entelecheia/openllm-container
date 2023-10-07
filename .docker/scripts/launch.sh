#!/bin/bash
# Print out the environment variables
export

# add your custom commands here that should be executed every time the docker container starts
echo "Starting docker container..."

### Set the USER_UID envvar to match your user.
# Ensures files created in the container are owned by you:
#   docker run --rm -it -v /some/path:/invokeai -e USER_UID=$(id -u) <this image>
# Default UID: 1000 chosen due to popularity on Linux systems. Possibly 501 on MacOS.

echo "Fixing permissions..."
USER_UID=${USER_UID:-1000}
USER=${USERNAME:-app}
usermod -u "${USER_UID}" "${USER}" 1>/dev/null

### Set the $PUBLIC_KEY env var to enable SSH access.
# It is useful to have the full SSH server e.g. on Runpod.
# (use SCP to copy files to/from the image, etc)
if [[ -n "$SSH_PUB_KEY" ]] && [[ ! -d "${HOME}/.ssh" ]]; then
    mkdir -p "${HOME}/.ssh"
    echo "${SSH_PUB_KEY}" > "${HOME}/.ssh/authorized_keys"
    chmod -R 700 "${HOME}/.ssh"
    service ssh start
fi

# Run the CMD as the Container User (not root).
exec gosu "${USER}" openllm start "${OPENLLM_MODEL_NAME}" --model-id "${OPENLLM_MODEL_ID}" --backend "${OPENLLM_BACKEND}"

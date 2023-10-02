# Sets the base image for subsequent instructions
ARG ARG_BUILD_FROM="ghcr.io/entelecheia/openllm:latest-base"
FROM $ARG_BUILD_FROM

# Setting ARGs and ENVs for user creation and workspace setup
ARG ARG_USERNAME="app"
ARG ARG_USER_UID=9001
ARG ARG_USER_GID=$ARG_USER_UID
ARG ARG_WORKSPACE_ROOT="/workspace"
ENV USERNAME $ARG_USERNAME
ENV USER_UID $ARG_USER_UID
ENV USER_GID $ARG_USER_GID
ENV WORKSPACE_ROOT $ARG_WORKSPACE_ROOT

# Creates a non-root user with sudo privileges
USER root
# check if user exists and if not, create user
RUN if id -u $USERNAME >/dev/null 2>&1; then \
    echo "User exists"; \
    else \
    groupadd --gid $USER_GID $USERNAME && \
    adduser --uid $USER_UID --gid $USER_GID --force-badname --disabled-password --gecos "" $USERNAME && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    adduser $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME; \
    fi

# Switches to the newly created user
USER $USERNAME
# Sets up the workspace for the user
RUN sudo rm -rf $WORKSPACE_ROOT && sudo mkdir -p $WORKSPACE_ROOT/projects
RUN sudo chown -R $USERNAME:$USERNAME $WORKSPACE_ROOT

# Adds .local/bin to PATH
ENV PATH="/home/$USERNAME/.local/bin:${PATH}"
# Sets Python environment variables
ENV PIP_DEFAULT_TIMEOUT 100
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Sets the time zone within the container
ENV TZ="Asia/Seoul"

# Install dotfiles
ARG ARG_USER_FULLNAME
ARG ARG_USER_EMAIL
ARG ARG_GITHUB_USERNAME
ARG ARG_SYSTEM_HOSTNAME
ARG ARG_WORKSPACE_LOCATION="/"
ARG ARG_DOTFILES_VERSION="0.1.0"
ENV USER_FULLNAME $ARG_USER_FULLNAME
ENV USER_EMAIL $ARG_USER_EMAIL
ENV GITHUB_USERNAME $ARG_GITHUB_USERNAME
ENV SYSTEM_HOSTNAME $ARG_SYSTEM_HOSTNAME
ENV WORKSPACE_LOCATION $ARG_WORKSPACE_LOCATION
ENV DOTFILES_VERSION $ARG_DOTFILES_VERSION
ENV DOTFILES_APPLY_ROOTMOI=0
ENV DOTFILES_USE_CODE=1
ENV DOTFILES_USE_PYTHON_TOOLS=1
ENV DOTFILES_MINIMUM=1
ENV REMOTE_CONTAINERS=1

RUN echo "Current user: $USERNAME"
RUN echo "Dotfiles version: $DOTFILES_VERSION"
RUN if [ -d "/home/$USERNAME/.dotfiles" ]; then \
    echo "Dotfiles already installed"; \
    else \
    sh -c "$(wget -qO- https://dotfiles.entelecheia.ai/install)"; \
    fi

# Sets the working directory to workspace root
WORKDIR $WORKSPACE_ROOT
# Copies scripts from host into the image
COPY ./.docker/scripts/ ./scripts/


# Setting ARGs and ENVs for Stable-Diffusion-WebUI GitHub repository
ARG ARG_APP_SOURCE_REPO="bentoml/OpenLLM"
ARG ARG_APP_INSTALL_ROOT="/workspace/projects"
ARG ARG_APP_CLONE_DIRNAME="OpenLLM"
ARG ARG_APP_SOURCE_BRANCH="main"
ARG ARG_APP_SERVICE_NAME="app"
ENV APP_SOURCE_REPO $ARG_APP_SOURCE_REPO
ENV APP_INSTALL_ROOT $ARG_APP_INSTALL_ROOT
ENV APP_CLONE_DIRNAME $ARG_APP_CLONE_DIRNAME
ENV APP_SOURCE_BRANCH $ARG_APP_SOURCE_BRANCH
ENV APP_SERVICE_NAME $ARG_APP_SERVICE_NAME

# Specifies the command that will be executed when the container is run
CMD ["bash"]

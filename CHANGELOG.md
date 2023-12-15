<!--next-version-placeholder-->

## v0.13.2 (2023-12-15)

### Fix

* **environment:** Update APP_TORCH_CUDNN version ([`9fca521`](https://github.com/entelecheia/openllm-container/commit/9fca521ba5a61185812103f7cf5f4b1edef2361e))
* **base-image:** Update CUDA base image version ([`e848fab`](https://github.com/entelecheia/openllm-container/commit/e848fab5c0ed6e227134cb74e39db2606b805248))

## v0.13.1 (2023-11-17)

### Fix

* **docker:** Update openllm version to 0.4.14 and add extra index url ([`02b53a4`](https://github.com/entelecheia/openllm-container/commit/02b53a4a58a68f066ffdcd33b6dbe50f5d022801))

## v0.13.0 (2023-10-31)

### Feature

* **docker:** Add TensorFlow version argument and installation ([`cdbaf43`](https://github.com/entelecheia/openllm-container/commit/cdbaf4349de48e5e2a278a0b4d7802041aad9e5a))
* **docker:** Add tensorflow with cuda support to requirements ([`917004e`](https://github.com/entelecheia/openllm-container/commit/917004e0d3429dc3b4d6c55dd51d9535baaf9a8f))
* **.github/workflows:** Secure disk space for builds ([`c3a2c35`](https://github.com/entelecheia/openllm-container/commit/c3a2c355e72fb6e374805f2b502fc89fc7e142dc))

### Fix

* **dependencies:** Upgrade openllm to 0.3.13 ([`624c5fb`](https://github.com/entelecheia/openllm-container/commit/624c5fb32c1dc75c77022f280f7f9ef34752f1d5))
* **docker:** Upgrade OPENLLM_VERSION to 0.3.13 ([`fa65081`](https://github.com/entelecheia/openllm-container/commit/fa650810b65771155dd760e1c5cc8dd185eee666))
* **docker:** Downgrade OPENLLM version in docker.version ([`1805a0d`](https://github.com/entelecheia/openllm-container/commit/1805a0daa2528dbee3e96056bc35835aa4384f2e))

## v0.12.0 (2023-10-30)

### Feature

* **docker:** Add OPENLLM_VERSION to docker.version ([`6c06ceb`](https://github.com/entelecheia/openllm-container/commit/6c06ceb208daa11d2a826adbce518e48dd6271b6))
* **dependencies:** Upgrade openllm to 0.3.10 ([`6f6fbe1`](https://github.com/entelecheia/openllm-container/commit/6f6fbe180e604d269d4eeb356ca418906ba0d0b4))
* **docker-compose:** Add new service playground with openllm-ui-clojure image ([`6d90a71`](https://github.com/entelecheia/openllm-container/commit/6d90a711a263f93f2a1bef9029ddd3d5360d1690))

## v0.11.0 (2023-10-12)

### Feature

* **.github:** Add dependabot configuration ([`5dc5a5f`](https://github.com/entelecheia/openllm-container/commit/5dc5a5fda9d81549cfec790d2c1e2364866dcf5b))
* **Dockerfile.base:** Add ARG_OPENLLM_VERSION variable ([`59d35f1`](https://github.com/entelecheia/openllm-container/commit/59d35f1b41237b5c46dde475844cbcd8a59a8ec0))
* **docker:** Add OPENLLM_VERSION variable ([`66ba34b`](https://github.com/entelecheia/openllm-container/commit/66ba34b8c20d9229b3cf944ea3aaee83f2713ad1))
* **docker:** Add OPENLLM_VERSION argument to docker-compose.base.yaml ([`080f126`](https://github.com/entelecheia/openllm-container/commit/080f12665ea8d61d245935c1a01fd06ac36a00a8))

## v0.10.0 (2023-10-09)

### Feature

* **docker:** Add UI ports configuration ([`0044b8c`](https://github.com/entelecheia/openllm-container/commit/0044b8c3304e5ab5b7735e9442f6fe1028954bbf))
* **Makefile:** Add docker-up-ui command ([`ca517d1`](https://github.com/entelecheia/openllm-container/commit/ca517d16c32cc3a88b7a6bb8be0e2ec153c1ca1f))
* **docker:** Add docker compose ui config ([`879ff27`](https://github.com/entelecheia/openllm-container/commit/879ff277cbfe0ebe627f2b1115c27e828fc026b7))
* **docker:** Add cors option to openllm start command ([`3be8eeb`](https://github.com/entelecheia/openllm-container/commit/3be8eeb417092d8eb6e276d853eb21fd62a3b0ca))

## v0.9.7 (2023-10-07)

### Fix

* **docker:** Add USER_UID environment variable ([`231eb8a`](https://github.com/entelecheia/openllm-container/commit/231eb8a53f3d20376648aec35c1494f9dd0133c3))

## v0.9.6 (2023-10-07)

### Fix

* **docker:** Change APP_CLONE_DIRNAME from invokeai to openllm ([`4b03550`](https://github.com/entelecheia/openllm-container/commit/4b03550071180d4124d6e721dc8f632b1a13543a))

## v0.9.5 (2023-10-07)

### Fix

* **Dockerfile:** Add app installation root and clone dir arguments ([`919ec26`](https://github.com/entelecheia/openllm-container/commit/919ec268e027d753f96c897bcf9e21bfbfbc5720))

## v0.9.4 (2023-10-07)

### Fix

* **Dockerfile.base:** Introduce cache for pip install, change COPY to use --link option ([`feeba21`](https://github.com/entelecheia/openllm-container/commit/feeba2177caff2f2ffd2a5802270ea7e9957304e))

## v0.9.3 (2023-10-07)

### Fix

* **docker:** Replace --link flag with --from in Dockerfile.base ([`ea5312e`](https://github.com/entelecheia/openllm-container/commit/ea5312e5bb35a4d43c6d4362d8890b2828015b51))

## v0.9.2 (2023-10-07)

### Fix

* **docker:** Refactor Dockerfile for python and pytorch setup ([`dce09ed`](https://github.com/entelecheia/openllm-container/commit/dce09ed4bfb002bbfa6636fef1ce856807682312))

## v0.9.1 (2023-10-07)

### Fix

* **dockerfile:** Move PATH environment variable declaration ([`ad29ba7`](https://github.com/entelecheia/openllm-container/commit/ad29ba72cd49402ebb8e0c83b33f09dad15ff80f))

## v0.9.0 (2023-10-07)

### Feature

* **docker:** Add detailed ARGS and ENVs for GitHub repository ([`591cfb4`](https://github.com/entelecheia/openllm-container/commit/591cfb492474f8f8b3eb957b83861013fcabe272))
* **docker:** Update docker common env configuration parameters ([`a8fc3cd`](https://github.com/entelecheia/openllm-container/commit/a8fc3cd99c114db1a185a5b57c8a1d0172b4af7f))
* **docker-compose:** Add SSH_PUB_KEY and HF_HOME environment variables, mount HF_HOME directory ([`7b371aa`](https://github.com/entelecheia/openllm-container/commit/7b371aa2c96f68e625e990641831a39337b5a89c))

## v0.8.1 (2023-10-02)

### Fix

* **docker:** Reinstall openllm to ensure latest version ([`9ede693`](https://github.com/entelecheia/openllm-container/commit/9ede693b209034351bec60e7137db30164f11215))
* **docker:** Correct permissions in launch script ([`f031c8f`](https://github.com/entelecheia/openllm-container/commit/f031c8fe39d3f86a2c35e3011e49c23f86f9c1cb))
* **docker:** Correct permission setup in launch script ([`403094b`](https://github.com/entelecheia/openllm-container/commit/403094be27e2e3e24fb086034bb094e7f8151aa2))

## v0.8.0 (2023-10-02)

### Feature

* **docker:** Add BENTOML_HOME environment variable ([`ebe7b3c`](https://github.com/entelecheia/openllm-container/commit/ebe7b3c45f273584a99ea4f9542ced88440047a5))
* **docker:** Add BentoML environment variable and creation of directory ([`c25d65b`](https://github.com/entelecheia/openllm-container/commit/c25d65be02db7995638775d47d63a631626a368a))
* **docker:** Add BentoML home configuration ([`17ebd39`](https://github.com/entelecheia/openllm-container/commit/17ebd397f61844800dc5ae0890280c75b8226b36))
* **docker:** Add BENTOML_HOME argument and environment variable ([`b4747fb`](https://github.com/entelecheia/openllm-container/commit/b4747fb1905efe9fa85454c0fc0bebdff74e49cb))
* **docker-compose:** Add Bentoml home environment variable ([`a82643b`](https://github.com/entelecheia/openllm-container/commit/a82643b553869d08cafbb0b5c204b35b7422d0bc))
* **docker:** Add OPENLLM_MODEL_NAME environment variable ([`52b86fe`](https://github.com/entelecheia/openllm-container/commit/52b86fecd66da88cbbcf332b7e9419ac648c5363))

## v0.7.0 (2023-10-02)

### Feature

* **docker:** Add openllm start command in launch script ([`71b5e0d`](https://github.com/entelecheia/openllm-container/commit/71b5e0dad2a919f3ed0c57333df0e649c5c9aca4))
* **docker:** Add OPENLLM_MODEL_ID and OPENLLM_BACKEND configurations ([`b8b4f7b`](https://github.com/entelecheia/openllm-container/commit/b8b4f7bda5b806711ee9f1979466654c15fb6a79))
* **docker-compose:** Add OPENLLM environment variables ([`c9ae2e2`](https://github.com/entelecheia/openllm-container/commit/c9ae2e26b1393a50dcafd05c4411213a55a77bfa))
* **docker:** Add hugging face access tokens ([`50c058e`](https://github.com/entelecheia/openllm-container/commit/50c058e308568eb86c51df6a5b7b00284624d263))

### Fix

* **docker-scripts:** Change default RUN_COMMAND value ([`b9f5309`](https://github.com/entelecheia/openllm-container/commit/b9f53096c873023ec531688dd4c451ea658c191b))

## v0.6.0 (2023-10-02)

### Feature

* **docker-config:** Update web service ports ([`17160d9`](https://github.com/entelecheia/openllm-container/commit/17160d9ae421ad85ab85c259a47b5b89e9ab1618))

## v0.5.0 (2023-10-02)

### Feature

* **docker:** Add conditional for app variant in launch.sh ([`5e22580`](https://github.com/entelecheia/openllm-container/commit/5e22580742601b77b41aa4888986c88091f13ce3))
* **docker:** Add init-dotfiles.sh script ([`b46c720`](https://github.com/entelecheia/openllm-container/commit/b46c720b9af973df3db5f98c51c53b6a7e063bc7))
* **docker:** Add dotfiles setup and environment variables ([`32715da`](https://github.com/entelecheia/openllm-container/commit/32715da91fe0776f908148fcd796672020306718))
* **dockerfile:** Add conditional dotfile installation ([`a023594`](https://github.com/entelecheia/openllm-container/commit/a023594ffc4597eb507c1786944eb0792674a95f))
* **docker:** Add new volumes to docker-compose.app.yaml ([`d67171c`](https://github.com/entelecheia/openllm-container/commit/d67171c2ac4535555234a8d178673914cbe6477b))
* **docker-config:** Update app details and preferences ([`577ccfb`](https://github.com/entelecheia/openllm-container/commit/577ccfb97063cb0d3328f4f752a0db2a5a258099))
* **docker:** Add environment variables and volume configuration ([`25eaa35`](https://github.com/entelecheia/openllm-container/commit/25eaa35629850536b66d7a333942f5b2a543c8db))
* **docker:** Add Do Not Track option ([`cfe8240`](https://github.com/entelecheia/openllm-container/commit/cfe8240543292b809219bb9634ff2aa330cf82bd))

## v0.4.0 (2023-10-02)

### Feature

* **.github/scripts:** Add script to free up disk space ([`a318b76`](https://github.com/entelecheia/openllm-container/commit/a318b76f1b364de9400ddee77582b33382647a7c))
* **docker:** Add vllm to requirements in docker scripts ([`e63c4d3`](https://github.com/entelecheia/openllm-container/commit/e63c4d395c35be16bbbe543aacea50b35a961e18))
* **docker:** Add vllm to requirements.txt ([`0ef76fd`](https://github.com/entelecheia/openllm-container/commit/0ef76fd53e2ef7e061113222d85829f375b07967))
* **docker:** Update base image in Dockerfile.base ([`d11b929`](https://github.com/entelecheia/openllm-container/commit/d11b929a7d57cdd9ac94ca51a620c6066c8d6a5b))

## v0.3.2 (2023-10-02)

### Fix

* **docker:** Remove sudo from pip install command ([`233dd8e`](https://github.com/entelecheia/openllm-container/commit/233dd8edead6faf426003c3406fabe836f080b24))
* **dockerfile:** Enable pip install in Dockerfile ([`f285257`](https://github.com/entelecheia/openllm-container/commit/f2852576c3972e87c3d61582a34b062bd38b83bf))

## v0.3.1 (2023-10-01)

### Fix

* **docker-config:** Change pip command from pip3 to pip ([`c73bc56`](https://github.com/entelecheia/openllm-container/commit/c73bc56fac88bfbce7cbf7cd9ca415fde2a2ee3a))
* **docker:** Change pip3 to pip in Dockerfile.base ([`23b4d7d`](https://github.com/entelecheia/openllm-container/commit/23b4d7d526db2cd38c574d4c6f01a18a93ec5005))
* **docker:** Change pip3 to pip in Dockerfile.app ([`88861cc`](https://github.com/entelecheia/openllm-container/commit/88861cc0aa71a495b01e01b5ceb642d9bcfaf561))

## v0.3.0 (2023-10-01)

### Feature

* **Makefile:** Add symlink-global-docker-env for local development ([`50db5fc`](https://github.com/entelecheia/openllm-container/commit/50db5fce5e176dcd4e39e3ded2c2530c93517ce7))

### Documentation

* **README:** Correct spelling error in description ([`de5aaed`](https://github.com/entelecheia/openllm-container/commit/de5aaed80faf47f9908ad77d53399364ec6ec505))

## v0.2.0 (2023-10-01)

### Feature

* **docker-config:** Add python version ([`f0e9ae1`](https://github.com/entelecheia/openllm-container/commit/f0e9ae119547ca7f94090d555716f372bfc11442))

## v0.1.0 (2023-10-01)

### Feature

* Initial commit ([`2b046b9`](https://github.com/entelecheia/openllm-container/commit/2b046b982bd8cd616f24e313d837975d66467d32))

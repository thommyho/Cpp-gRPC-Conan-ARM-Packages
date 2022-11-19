conan remote add $ARTIFACTORY_REMOTE_NAME $ARTIFACTORY_URL
conan user -p $ARTIFACTORY_USER_PW -r $ARTIFACTORY_REMOTE_NAME $ARTIFACTORY_USER
conan create conan-scripts/conan-center-index/recipes/grpc/all grpc/1.46.3@ -pr:b profiles/x86_64_gcc9_release_host -pr:h profiles/armv8_gcc9_release_target -b missing -s build_type=Release
conan upload "*" -r $ARTIFACTORY_REMOTE_NAME --all --confirm
conan remove "*" -f
conan create conan-scripts/conan-center-index/recipes/grpc/all grpc/1.46.3@ -pr:b profiles/x86_64_gcc9_debug_host -pr:h profiles/armv8_gcc9_debug_target -b missing -s build_type=Debug
conan upload "*" -r $ARTIFACTORY_REMOTE_NAME --all --confirm
export VERSION=1.50.1
pip install conan --upgrade
conan install conan-scripts/conan-center-index/recipes/grpc/all grpc/$VERSION@ -pr:b profiles/x86_64_gcc9_release_host -pr:h profiles/armv8_gcc9_release_target -b missing -s build_type=Release
# ./upload.sh
# conan create conan-scripts/conan-center-index/recipes/grpc/all grpc/$VERSION@ -pr:b profiles/x86_64_gcc9_debug_host -pr:h profiles/armv8_gcc9_debug_target -b missing -s build_type=Debug
# ./upload.sh

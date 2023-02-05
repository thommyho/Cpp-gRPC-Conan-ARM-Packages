export VERSION=1.50.1
pip install conan --upgrade
conan create conan-scripts/conan-center-index/recipes/grpc/all grpc/$VERSION@ -pr:b profiles/x86_64_gcc9_release_host -pr:h profiles/armv8_gcc9_release_target -o grpc:shared=True -b missing -s build_type=Release
conan create conan-scripts/conan-center-index/recipes/grpc/all grpc/$VERSION@ -pr:b profiles/x86_64_gcc9_debug_host -pr:h profiles/armv8_gcc9_debug_target -o grpc:shared=True -b missing -s build_type=Debug

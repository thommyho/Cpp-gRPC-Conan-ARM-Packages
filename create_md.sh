export VERSION=1.50.1
pip install conan --upgrade
conan install grpc/$VERSION@ --generator markdown -r armv7-armv8-x86_64-linux-thommyho -pr:b ../profiles/x86_64_gcc9_release_host -pr:h ../profiles/armv8_gcc9_release_target -b missing -s build_type=Release
conan search grpc/$VERSION@ --table table.html -r armv7-armv8-x86_64-linux-thommyho
## Build
```sh
cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install -DBUILD_TESTS=ON -DBUILD_EXAMPLES=ON -DCPACK_GENERATOR="TGZ"
cmake --build _build --target install
```

## Test
```sh
cmake --build _build --target test -- ARGS=--verbose
```

## Create Packages
```sh
cmake --build _build --target package
```
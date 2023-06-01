# Set env variables for build cache and packages
# needs to be run as admin

# dotnet
setx /M NUGET_PACKAGES D:\packages\nuget
dotnet nuget locals global-packages --list

# python
setx /M PIP_CACHE_DIR D:\packages\pip

# rust
setx /M CARGO_HOME D:\packages\cargo

# npm
setx /M npm_config_cache D:\packages\npm

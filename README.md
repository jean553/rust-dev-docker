# rust-dev-docker

A docker image to be used with Vagrant for Rust applications development.

## Properties

* Phusion (Ubuntu for Docker) (https://github.com/phusion/baseimage-docker)
* Latest Rust version (from https://www.rust-lang.org/en-US/install.html)
* vim, syntastic, pathogen
* zsh

## Todo

* add autocomplete

## Usage

Define a VM in your Vagrantfile with the following line:

```ruby
d.image = "jean553/rust-dev-docker"
```

## More features

### Environment variables

Your `Vagrantfile` must provides the following environment variables
for the container created from this image:
* `APP_PATH` the full path to the application

### Use `kcov` coverage

`kcov` requires some security options when running `docker run`.
The expected security option is `--security-opt seccomp=unconfined`.

```ruby
d.create_args = ["--security-opt=seccomp=unconfined"]
```

Generate the coverage:

```bash
cargo test --no-run
kcov --verify target/cov target/debug/{library-compiled-binary-file}
```

The generated coverage can be found in `target/cov/index.html`.

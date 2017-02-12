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

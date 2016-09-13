# facts

#### Table of Contents

1. [Description](#description)
1. [Setup requirements](#setup-requirements)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

his module allows you to create Puppet Facts using Puppet code or your ENC.

This can be useful to document your machines or even your Puppet classes. A class could for example create it's own Fact, which when queried by a different class, could determine if the class has been applied to the machine or any other state that might be interesting to report.

## Setup Requirements

Works with facter >= 1.7

## Usage

In your code, you can use :

class { facts:
  instances => { server_comment: { value: "Dont reboot me!" } }
}

## Reference

#### Class: `facts`

Manage facts and module Configuration

##### Parameters (all optional)

* `instances`: Hash of containing the facts::instance to realize. Defaults: {}

* `facterpath`: Path where files are created. Defaults:

  * Windows: %programdata%\PuppetLabs\facter\facts.d
  * other: /etc/facter/facts.d

#### Defined Type: `facts::instance`

Specifies a fact to create on the host

##### Parameters

* `ensure`: Specifies if the fact must be present or not. Defaults: present

* `factname`: Specifies the fact's name. Defaults: $name

* `value`: Specifies the content of the fact, can be a static value or a script. Defaults: null

## Limitations

Tested on Debian, Solaris and Windows 2012 R2. Might work on other platforms by specifying the facterpath

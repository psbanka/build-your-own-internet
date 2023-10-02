# build-your-own-internet

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

## How to approach this repo

The intention behind this project is discovery and understanding. The idea is to explore how the internet is put together and use common industry tools to see and understand all the communications necessary to make the services and apps we use work.

We decided to take notes that create a reproducible experience. We document our questions, discovery, and our processes so other people who may want to take a similar journey can have a path to follow. We have broken up our exploration into chapters. Each chapter has a README that documents our exploration and whatever files we create or modify in our exploration. Some chapters have a /final directory that contain the artifacts for the chapter in their final state. If you get lost in a chapter and need a reference point, these may be artifacts to help move you forward. There is, at least as of yet, very little actual software to run from this repo. Instead, the intent is to guide the experience and the learning process.

## Pre-requisites

- a basic undestanding of docker [Course link](https://www.linkedin.com/learning/learning-docker-2018/why-create-containers-using-docker)
- a basic understanding of terminals and [bash](https://www.linkedin.com/learning/learning-bash-scripting-17063287/learning-bash-scripting)
- a basic understanding of [IPv4 and subnets](https://www.linkedin.com/learning/cisco-ccna-200-301-cert-prep-1-network-fundamentals-and-access/ipv4-addressing-and-subnetting)
- optional: understand how [`jq` works](https://stedolan.github.io/jq/tutorial/) (if you feel motivated)
- optional for the super motivated: understand the [communication protocol layers](https://datatracker.ietf.org/doc/rfc1122/) we'll be working with
- get some software installed:
  - [colima](https://smallsharpsoftwaretools.com/tutorials/use-colima-to-run-docker-containers-on-macos/) or [docker desktop](https://www.docker.com/products/docker-desktop/) for mac™
  - `jq` by whatever means necessary (e.g. `brew install jq`)

## DISCLAIMERS

We've put some effort into explaining the commands that we're using. However, if we use a command with a flag that doesn't have explanation, check the command's `help` for more details; e.g. `ping --help`. Alternatively, check the command's manpage; e.g. `man ping`.

## General thoughts

What if we build a little internet?

### Intentions

- Documenting our process for our future friends
- How to build the internet blog

### What concepts are involved

- Routing/Networking basics
- Layer-2 concepts
- BGP specific routing concepts
- DNS root / federation
- Docker stuffs
- TLS fundamentals
- HTTP fundamentals
- VPN: TCP / UDP differences - maximum segment-size discovery

### What tools should we use?

- What are we doing today ?
- Github projects (Kanban)

## How to get started reading and getting involved

- Start with [Chapter 1](https://github.com/psbanka/build-your-own-internet/blob/main/chapters/001-getting-started/README.md).
- If you want to make changes to this repository (e.g. fixing errors or adding sections), fork this repository and submit a pull-request
- If you have a general question and want someone to talk to, [submit an issue](https://github.com/psbanka/build-your-own-internet/issues/new)

## Stages of the project

### [COMPLETE] STAGE 0: What is the bare minimum to make an internetwork?

- machines running on 3 or more networks
- packets between machines on different networks
- basic software to be able to view what's happening on the networks
- Application (HTTP servers)

### STAGE 1: What makes large internetworks possible?

- BGP/IGP:Dozen nodes running BGP
- DNS (root nodes)

### STAGE 2: Secure that shit

- TLS: load/use basic Server/client certificates (generate using openssl)

### STAGE 3: How can we replace some of these things with stuff we build

- Set up a Root CA (Boulder) and import root certificates to Chrome
- Build our own BGP implementation?
- Build our own DNS server?

### Side Quests?

Here's some interesting topics that came up in the course of our exploration that didn't fit in at the time. We may come back to these?

- DHCP
- Proxy ARP

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

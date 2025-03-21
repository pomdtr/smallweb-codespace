# Smallweb Codespace

![screenshot](./screenshot.jpg)

## Usage

1. Create a new repository from this template
1. Generate an ssh key pair using `ssh-keygen -t ed25519`
1. Store the private key in a codespace secret named `SSH_PRIVATE_KEY`
1. Add the public key to the `authorized_keys` file on the server
1. (optional) Set the `SOPS_AGE_KEY` secret if you want to use `sops` to encrypt secrets
1. Update the `.devcontainer/ssh_config` file with the server's details
2. Run `ssh-keyscan <server-ip-or-host> >> ~/.ssh/known_hosts` to pre-fetch the host key of your server
1. Run the `Create Mutagen Sync` command to sync the workspace with the server

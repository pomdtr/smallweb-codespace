# Smallweb Codespace

## Usage

1. Create a new repository from this template
1. Generate an ssh key pair using `ssh-keygen -t ed25519`
1. Store the private key in a codespace secret named `SSH_PRIVATE_KEY`
1. Add the public key to the `authorized_keys` file on the server
1. (optional) Set the `SOPS_AGE_KEY` secret if you want to use `sops` to encrypt secrets
1. Update the `SSH_REMOTE_*` env variables in the `.devcontainer/devcontainer.json` file
1. Create a new codespace
1. Run the `sync.sh` script at the root of the repository

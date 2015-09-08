# compose-booked-deploy
Deployment scripts for Booked containers

```
export DOCKER_TAG=build_with_ansible-f33655dd7168e4dbe83f5484e61d19afa64378d3

ansible-playbook install.yml -i inventory/testing --extra-vars "docker_tag=$DOCKER_TAG" --become-user=root --ask-become-pass
```

# compose-booked-deploy
Deployment scripts for Booked containers

```
ansible-playbook -i inventory/testing --become-user=root --ask-become-pass copy_ocf_exports.yml 


export COMPOSE_BOOKED_TAG=shuffle-d132f38e7e4b760485ad2b5db197f8dee1c5c143
export DOCKER_TAG=build_with_ansible-f33655dd7168e4dbe83f5484e61d19afa64378d3

ansible-playbook install.yml -i inventory/testing --extra-vars "compose_booked_tag=$COMPOSE_BOOKED_TAG,docker_tag=$DOCKER_TAG" --become-user=root --ask-become-pass
```

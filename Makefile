setup:
	ansible-galaxy collection install -r requirements.yml
	pip install ansible-lint
run:
	ansible-playbook -i inventories/hosts.ini setup_vm.yml --diff --extra-vars="@password.yml"

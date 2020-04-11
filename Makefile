
PLAYBOOKDIR=./playbooks
ANSIBLE_PLAYBOOK=`which ansible-playbook`

sysprep:
	@echo Run sysprep playbook
	@$(ANSIBLE_PLAYBOOK) -i hosts.yml $(PLAYBOOKDIR)/sysprep.yml

deploy-ssh:
	@echo Deploy ssh keys
	@$(ANSIBLE_PLAYBOOK) --ask-pass -k -K -i hosts.yml $(PLAYBOOKDIR)/deploy-ssh.yml

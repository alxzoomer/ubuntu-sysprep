
PLAYBOOKDIR=./playbooks
ANSIBLE_PLAYBOOK=`which ansible-playbook`

sysprep:
	$(ANSIBLE_PLAYBOOK) -i hosts.yml $(PLAYBOOKDIR)/sysprep.yml

deploy-ssh:
	$(ANSIBLE_PLAYBOOK) --ask-pass -k -K -i hosts.yml $(PLAYBOOKDIR)/deploy-ssh.yml

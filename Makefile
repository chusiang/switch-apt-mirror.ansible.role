.PHONY: main init check syntax_check lint_check yaml_check travis_check \
	up run clean_roles clean

main: check

init:
	ansible-galaxy install -f -p roles -r requirements.yml
	if [ ! -d "/tmp/ansible-retry" ]; then mkdir "/tmp/ansible-retry"; fi

check: syntax_check lint_check

syntax_check:
	ansible-playbook --syntax-check provision.yml

lint_check:
	ansible-lint provision.yml

yaml_check:
	find -name "*.yml" -type f -not -path "./roles/*"		\
		-exec yamllint -c .yamllint.yaml {} \;

travis_check:
	travis lint .travis.yml

up:
	vagrant up

run:
	ansible-playbook provision.yml -i				\
		.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory

clean_roles:
	-rm -rf roles/

clean: clean_roles
	-rm -f *.retry *.log build_result.*
	vagrant destroy -f

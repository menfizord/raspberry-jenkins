install-virtualenv= \
	@echo "||||||Installing virtualenv||||||"; \
	pip install --user virtualenv -U

create-virtualenv= \
	@echo "||||Creating python virtualenv||||||"; \
	virtualenv -p python2.7 venv

install-reqs = \
	@echo "|||||Installing python requirements|||||"; \
	source ./venv/bin/activate &&  pip install -r ./requirements.txt

provision-server = \
	@echo "Starting provisioning"; \
	source ./venv/bin/activate && sudo ansible-playbook -i inventory/raspberry.inventory ./raspberry.yml

install:
	$(call install-virtualenv)
	$(call create-virtualenv)
	$(call install-reqs)

provision:
	$(call provision-server)

component:
	@read -p 'Component name: ' component; \
	touch ./src/components/$$component.vue

serve:
	npm run serve
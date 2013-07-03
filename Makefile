YAML2HTML=node_modules/.bin/yaml2html
all: node_modules index.html index_pt.html

node_modules:
	npm install yaml2html

index.html: index.mustache index_en.yaml
	$(YAML2HTML) index.mustache index_en.yaml > public/index.html

index_pt.html: index.mustache index_pt.yaml
	$(YAML2HTML) index.mustache index_pt.yaml > public/index_pt.html

clean:
	rm -r public/{index_pt,index}.html node_modules
	

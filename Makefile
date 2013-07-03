YAML2HTML=node_modules/.bin/yaml2html
all: index.html index_pt.html

index.html: index.mustache index_en.yaml
	$(YAML2HTML) index.mustache index_en.yaml > public/index.html

index_pt.html: index.mustache index_pt.yaml
	$(YAML2HTML) index.mustache index_pt.yaml > public/index_pt.html

clean:
	rm public/{index_pt,index}.html
	

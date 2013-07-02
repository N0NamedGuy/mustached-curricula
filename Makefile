all: index.html index_pt.html

index.html: index.mustache index_en.yaml
	node render.js index.mustache index_en.yaml > index.html

index_pt.html: index.mustache index_pt.yaml
	node render.js index.mustache index_pt.yaml > index_pt.html

clean:
	rm index_pt.html index.html
	

build : 
	docker build -t flan_scan .

container_name = flan_$(shell date +'%s')
start : 
	docker run --rm --name $(container_name) -v $(shell pwd)/shared:/shared flan_scan

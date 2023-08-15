
# OpenSearch
opensearch-up:
	docker-compose --project-name opensearch --file opensearch.yaml up -d

opensearch-down:
	docker-compose --project-name opensearch --file opensearch.yaml down

opensearch-delete-volumes:
	docker volume ls -q | grep opensearch | xargs -I\{\} docker volume rm \{\}

opensearch-logs:
	docker-compose --project-name opensearch --file opensearch.yaml logs --follow

# OpenSearch Single Node
opensearch-single-node-up:
	docker-compose --project-name opensearch-single-node --file opensearch-single-node.yaml up -d --remove-orphans

opensearch-single-node-down:
	docker-compose --project-name opensearch-single-node --file opensearch-single-node.yaml down

opensearch-single-node-delete-volumes:
	docker volume ls -q | grep opensearch-single-node | xargs -I\{\} docker volume rm \{\}
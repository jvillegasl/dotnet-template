secrets:
	dotnet user-secrets clear
	cat secrets.json | dotnet user-secrets set

migrations:
	dotnet ef database update

db:
	docker-compose --env-file docker.env up sqlserver

db-force:
	docker-compose --env-file docker.env up --build sqlserver


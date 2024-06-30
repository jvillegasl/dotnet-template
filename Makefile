secrets:
	dotnet user-secrets clear
	cat secrets.json | dotnet user-secrets set

migrations:
	dotnet ef database update


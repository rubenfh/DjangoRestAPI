# DjangoRestAPI

## Fonctionnalités
- Points de terminaison API RESTful
- Sérialisation et désérialisation des données
- Authentification et permissions des utilisateurs
- Modèles personnalisables pour diverses applications

## Installation
1. Cloner le dépôt.
2. Installer les paquets Python requis : `pip install -r requirements.txt`.
3. Lancer l'installation des paquets `docker-compose build`.
4. Configurer et exécuter les conteneurs Docker selon les configurations fournies.

## Accès à l'Application

Lancer l'app : `docker-compose up`

Après avoir lancé votre application Django, voici comment y accéder :

1. **Admin Django** : Accédez à `http://127.0.0.1:8000/admin/` pour utiliser l'interface d'administration de Django.

2. **API Schema** : Consultez le schéma de votre API à `http://127.0.0.1:8000/api/schema/` via `SpectacularAPIView`.

3. **Documentation de l'API** : Pour voir la documentation interactive de l'API, visitez `http://127.0.0.1:8000/api/docs/` qui utilise `SpectacularSwaggerView`.

4. **Endpoints Utilisateur** : Utilisez les endpoints liés à l'utilisateur à `http://127.0.0.1:8000/api/user/`.

5. **Endpoints Recette** : Accédez aux fonctionnalités de recette via `http://127.0.0.1:8000/api/recipe/`.

Assurez-vous que le serveur Django est en cours d'exécution pour accéder à ces URL.


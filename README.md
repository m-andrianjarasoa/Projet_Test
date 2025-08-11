Projet 1 : Configurer un serveur Harbor (registre d’images docker)
    • Créer un sous domaine « registry.orakernel.com » (IP : 78.47.119.84) chez cloudflare (https://dash.cloudflare.com/97bef719178ce0ddbff3ee44c5d23453/orakernel.com/dns/records)
    • Créer un serveur « srvharbor » chez Hetzner via terraform
(https://console.hetzner.com/projects/11384476/servers)
    • Utiliser cloud init pour installer les logiciels nécessaires (Git, Docker, harbor, …)
(https://blog.stephane-robert.info/docs/cloud/cloud-init/)
    • Paramétrer l’accès HTTPS en créant un certificat SSL via Traefic.
    • Accès console Harbor : admin / e1OWiJkzlbLMC8

Projet 2 : Déploiement d’une application livekit
    • Code source : https://github.com/winkler-kernel/livekit-project
    • Utiliser les images « token-service » et « dashboard » disponible chez Harbor
    • Créer un serveur « srv-livekit » chez Hetzner via terraform et utiliser cloud init pour installer les logiciels nécessaires.
    • Cloner le projet livekit
    • Lancer le serveur Livekit en utilisant la commande « docker-compose up -d »
Token Hetzner :
7WkOwxkZ41y26KoPBByxE8WUodWdmzcQ2k0WTKI6nbPDhzVP7a0U1jku89jqntqh
# Setup the Pattern Repository
### Prerequisites:

* Git
* Docker and Docker Compose

Clone the repository:

```git clone https://github.com/PatternPedia/pattern-pedia-docker.git```


### Run the pattern repository:

```docker-compose up -d```

Starts the individual components of the pattern repository.
 - UI (reachable on http://localhost:80)
 - Postgresdb 
 - API server, will populate the Database with initial demo data on first startup
 - Authentication server on http://localhost:8080

There are no preconfigured users and the first user created in Keycloak (on http://localhost:8080) that logs in to the 
Pattern Atlas will be set as the initial admin user.

Keycloak can further be used to create other users and after their first login to Pattern Atlas they can be assigned specific roles.

To terminate the system, run the following command:

```docker-compose down -v```


## Haftungsausschluss

 Dies ist ein Forschungsprototyp.
 Die Haftung für entgangenen Gewinn, Produktionsausfall, Betriebsunterbrechung, entgangene Nutzungen, Verlust von Daten und Informationen, Finanzierungsaufwendungen sowie sonstige Vermögens- und Folgeschäden ist, außer in Fällen von grober Fahrlässigkeit, Vorsatz und Personenschäden, ausgeschlossen.

 ## Disclaimer of Warranty

 Unless required by applicable law or agreed to in writing, Licensor provides the Work (and each Contributor provides its Contributions) on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
 You are solely responsible for determining the appropriateness of using or redistributing the Work and assume any risks associated with Your exercise of permissions under this License.

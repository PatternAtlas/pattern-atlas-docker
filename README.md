# Setup the Pattern Repository
### Prerequisites:

* Git
* Docker and Docker Compose

Clone the repository:

```git clone https://github.com/PatternAtlas/pattern-atlas-docker.git```


### Run the pattern repository:

```docker-compose up -d```

Starts the individual components of the pattern repository.
 - UI (reachable on http://localhost:1978)
 - Postgresdb 
 - API server on http://localhost:1977 (will populate the Database with initial demo data on first startup)
 - Keycloak authentication server on http://localhost:8080

Keycloak will be started with a preconfigured realm (named ``Patternatlas``).
Using the Keycload admin UI (http://localhost:8080/admin/), users for this realm can be created. There are no preconfigured users and the first user that logs in to the Pattern Atlas will be set as the initial admin user. This user can assign roles and privileges for new users using the Admin menu in Pattern Atlas.

To terminate the system, run the following command:

```docker-compose down -v```


## Haftungsausschluss

 Dies ist ein Forschungsprototyp.
 Die Haftung für entgangenen Gewinn, Produktionsausfall, Betriebsunterbrechung, entgangene Nutzungen, Verlust von Daten und Informationen, Finanzierungsaufwendungen sowie sonstige Vermögens- und Folgeschäden ist, außer in Fällen von grober Fahrlässigkeit, Vorsatz und Personenschäden, ausgeschlossen.

 ## Disclaimer of Warranty

 Unless required by applicable law or agreed to in writing, Licensor provides the Work (and each Contributor provides its Contributions) on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
 You are solely responsible for determining the appropriateness of using or redistributing the Work and assume any risks associated with Your exercise of permissions under this License.

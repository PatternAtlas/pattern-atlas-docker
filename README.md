# Setup the Pattern Repository
### Prerequisites:

* Git
* Docker and Docker Compose

Clone the repository:

```git clone https://github.com/PatternPedia/pattern-pedia-docker.git```

### Run the pattern repository:

```docker-compose up -d```

Afterwards, the pattern repository is running on http://localhost:4200 and is displaying demo data

To terminate the system, run the following command:

```docker-compose down```


### Initialize the db on startup
On default, the itialized-db image pulls data from our [public data repo](https://github.com/PatternAtlas/pattern-atlas-content). 
If an ssh key named pattern-atlas-content-ssh_secret is located in the directory, the initialized-db image pulls data from the [private data repo](https://github.com/PatternAtlas/internal-pattern-atlas-content).

To obtain the ssh key, ask the dev team for it. Alternatively, you can generate a new pair of public/private ssh keys and add the public key as a deploy key to the repo (https://github.com/PatternAtlas/internal-pattern-atlas-content/settings/keys). The private key needs to be saved as pattern-atlas-content-ssh_secret in the directory of the docker-compose file.

Database initialization is skipped? --> Make sure the previous processes are terminated with docker-compose down, otherwise postgres might skip the initialization.


## Haftungsausschluss

 Dies ist ein Forschungsprototyp.
 Die Haftung für entgangenen Gewinn, Produktionsausfall, Betriebsunterbrechung, entgangene Nutzungen, Verlust von Daten und Informationen, Finanzierungsaufwendungen sowie sonstige Vermögens- und Folgeschäden ist, außer in Fällen von grober Fahrlässigkeit, Vorsatz und Personenschäden, ausgeschlossen.

 ## Disclaimer of Warranty

 Unless required by applicable law or agreed to in writing, Licensor provides the Work (and each Contributor provides its Contributions) on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
 You are solely responsible for determining the appropriateness of using or redistributing the Work and assume any risks associated with Your exercise of permissions under this License.

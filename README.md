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

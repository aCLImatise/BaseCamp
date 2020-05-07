class: CommandLineTool
id: planemo_database_list.cwl
inputs:
- id: host
  doc: all   all    ::1/128         trust
  type: string
  inputBinding:
    position: 0
- id: postgres
  doc: Use postgres database type.
  type: boolean
  inputBinding:
    prefix: --postgres
- id: database_type
  doc: "[postgres|postgres_docker|sqlite|auto] Type of database to use for profile\
    \ - 'auto', 'sqlite', 'postgres', and 'postgres_docker' are available options.\
    \ Use postgres to use an existing postgres server you user can access without\
    \ a password via the psql command. Use postgres_docker to have Planemo manage\
    \ a docker container running postgres. Data with postgres_docker is not yet persisted\
    \ past when you restart the docker container launched by Planemo so be careful\
    \ with this option."
  type: boolean
  inputBinding:
    prefix: --database_type
- id: postgres_psql_path
  doc: Name or or path to postgres client binary (psql).
  type: string
  inputBinding:
    prefix: --postgres_psql_path
- id: postgres_database_user
  doc: Postgres username for managed development databases.
  type: string
  inputBinding:
    prefix: --postgres_database_user
- id: postgres_database_host
  doc: Postgres host name for managed development databases.
  type: string
  inputBinding:
    prefix: --postgres_database_host
- id: postgres_database_port
  doc: Postgres port for managed development databases.
  type: string
  inputBinding:
    prefix: --postgres_database_port
- id: docker_cmd
  doc: Command used to launch docker (defaults to docker).
  type: string
  inputBinding:
    prefix: --docker_cmd
- id: docker_sudo
  doc: / --no_docker_sudo Flag to use sudo when running docker.
  type: boolean
  inputBinding:
    prefix: --docker_sudo
- id: docker_host
  doc: Docker host to target when executing docker commands (defaults to localhost).
  type: string
  inputBinding:
    prefix: --docker_host
- id: docker_sudo_cmd
  doc: sudo command to use when --docker_sudo is enabled (defaults to sudo).
  type: string
  inputBinding:
    prefix: --docker_sudo_cmd
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- database_list

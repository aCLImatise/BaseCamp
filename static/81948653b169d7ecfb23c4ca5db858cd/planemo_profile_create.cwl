class: CommandLineTool
id: planemo_profile_create.cwl
inputs:
- id: in_postgres
  doc: Use postgres database type.
  type: boolean?
  inputBinding:
    prefix: --postgres
- id: in_database_type
  doc: "[postgres|postgres_docker|sqlite|auto]\nType of database to use for profile\
    \ -\n'auto', 'sqlite', 'postgres', and\n'postgres_docker' are available options.\
    \ Use\npostgres to use an existing postgres server\nyou user can access without\
    \ a password via\nthe psql command. Use postgres_docker to\nhave Planemo manage\
    \ a docker container\nrunning postgres. Data with postgres_docker\nis not yet\
    \ persisted past when you restart\nthe docker container launched by Planemo so\n\
    be careful with this option."
  type: boolean?
  inputBinding:
    prefix: --database_type
- id: in_postgres_psql_path
  doc: "Name or or path to postgres client binary\n(psql)."
  type: File?
  inputBinding:
    prefix: --postgres_psql_path
- id: in_postgres_database_user
  doc: Postgres username for managed development
  type: string?
  inputBinding:
    prefix: --postgres_database_user
- id: in_no_docker_sudo
  doc: Flag to use sudo when running docker.
  type: boolean?
  inputBinding:
    prefix: --no_docker_sudo
- id: in_docker_host
  doc: "Docker host to target when executing docker\ncommands (defaults to localhost)."
  type: string?
  inputBinding:
    prefix: --docker_host
- id: in_docker_sudo_cmd
  doc: "sudo command to use when --docker_sudo is\nenabled (defaults to sudo)."
  type: string?
  inputBinding:
    prefix: --docker_sudo_cmd
- id: in_container_dot
  doc: --docker_cmd TEXT               Command used to launch docker (defaults to
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- profile_create

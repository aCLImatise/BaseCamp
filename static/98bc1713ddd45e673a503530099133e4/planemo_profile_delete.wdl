version 1.0

task PlanemoProfileDelete {
  input {
    Boolean? postgres
    Boolean? database_type
    String? postgres_psql_path
    String? postgres_database_user
    String? postgres_database_host
    String? postgres_database_port
    String? docker_cmd
    Boolean? docker_sudo
    String? docker_host
    String? docker_sudo_cmd
    String profile_name
  }
  command <<<
    planemo profile_delete \
      ~{profile_name} \
      ~{true="--postgres" false="" postgres} \
      ~{true="--database_type" false="" database_type} \
      ~{if defined(postgres_psql_path) then ("--postgres_psql_path " +  '"' + postgres_psql_path + '"') else ""} \
      ~{if defined(postgres_database_user) then ("--postgres_database_user " +  '"' + postgres_database_user + '"') else ""} \
      ~{if defined(postgres_database_host) then ("--postgres_database_host " +  '"' + postgres_database_host + '"') else ""} \
      ~{if defined(postgres_database_port) then ("--postgres_database_port " +  '"' + postgres_database_port + '"') else ""} \
      ~{if defined(docker_cmd) then ("--docker_cmd " +  '"' + docker_cmd + '"') else ""} \
      ~{true="--docker_sudo" false="" docker_sudo} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""}
  >>>
  parameter_meta {
    postgres: "Use postgres database type."
    database_type: "[postgres|postgres_docker|sqlite|auto] Type of database to use for profile - 'auto', 'sqlite', 'postgres', and 'postgres_docker' are available options. Use postgres to use an existing postgres server you user can access without a password via the psql command. Use postgres_docker to have Planemo manage a docker container running postgres. Data with postgres_docker is not yet persisted past when you restart the docker container launched by Planemo so be careful with this option."
    postgres_psql_path: "Name or or path to postgres client binary (psql)."
    postgres_database_user: "Postgres username for managed development databases."
    postgres_database_host: "Postgres host name for managed development databases."
    postgres_database_port: "Postgres port for managed development databases."
    docker_cmd: "Command used to launch docker (defaults to docker)."
    docker_sudo: "/ --no_docker_sudo Flag to use sudo when running docker."
    docker_host: "Docker host to target when executing docker commands (defaults to localhost)."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is enabled (defaults to sudo)."
    profile_name: ""
  }
}
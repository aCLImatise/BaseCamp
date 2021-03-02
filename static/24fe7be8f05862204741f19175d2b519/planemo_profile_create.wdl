version 1.0

task PlanemoProfileCreate {
  input {
    Boolean? postgres
    Boolean? database_type
    File? postgres_psql_path
    String? postgres_database_user
    Boolean? no_docker_sudo
    String? docker_host
    String? docker_sudo_cmd
    String? galaxy_url
    String? galaxy_user_key
    String? galaxy_admin_key
    String container_dot
    String engine_dot
  }
  command <<<
    planemo profile_create \
      ~{container_dot} \
      ~{engine_dot} \
      ~{if (postgres) then "--postgres" else ""} \
      ~{if (database_type) then "--database_type" else ""} \
      ~{if defined(postgres_psql_path) then ("--postgres_psql_path " +  '"' + postgres_psql_path + '"') else ""} \
      ~{if defined(postgres_database_user) then ("--postgres_database_user " +  '"' + postgres_database_user + '"') else ""} \
      ~{if (no_docker_sudo) then "--no_docker_sudo" else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if defined(galaxy_url) then ("--galaxy_url " +  '"' + galaxy_url + '"') else ""} \
      ~{if defined(galaxy_user_key) then ("--galaxy_user_key " +  '"' + galaxy_user_key + '"') else ""} \
      ~{if defined(galaxy_admin_key) then ("--galaxy_admin_key " +  '"' + galaxy_admin_key + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    postgres: "Use postgres database type."
    database_type: "[postgres|postgres_docker|sqlite|auto]\\nType of database to use for profile -\\n'auto', 'sqlite', 'postgres', and\\n'postgres_docker' are available options. Use\\npostgres to use an existing postgres server\\nyou user can access without a password via\\nthe psql command. Use postgres_docker to\\nhave Planemo manage a docker container\\nrunning postgres. Data with postgres_docker\\nis not yet persisted past when you restart\\nthe docker container launched by Planemo so\\nbe careful with this option."
    postgres_psql_path: "Name or or path to postgres client binary\\n(psql)."
    postgres_database_user: "Postgres username for managed development"
    no_docker_sudo: "Flag to use sudo when running docker."
    docker_host: "Docker host to target when executing docker\\ncommands (defaults to localhost)."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is\\nenabled (defaults to sudo)."
    galaxy_url: "Remote Galaxy URL to use with external\\nGalaxy engine."
    galaxy_user_key: "User key to use with external Galaxy engine."
    galaxy_admin_key: "Admin key to use with external Galaxy"
    container_dot: "--docker_cmd TEXT               Command used to launch docker (defaults to"
    engine_dot: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}
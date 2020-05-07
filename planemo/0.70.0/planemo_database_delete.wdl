version 1.0

task PlanemoDatabaseDelete {
  input {
    Boolean postgresPostgres
    Boolean databaseDatabaseType
    String postgresPostgresPsqlPath
    String postgresPostgresDatabaseUser
    String postgresPostgresDatabaseHost
    String postgresPostgresDatabasePort
    String dockerDockerCmd
    Boolean dockerDockerSudo
    String dockerDockerHost
    String dockerDockerSudoCmd
    String? hostHost
  }
  command <<<
    planemo database_delete \
      ~{hostHost} \
      ~{true="--postgres" false="" postgresPostgres} \
      ~{true="--database_type" false="" databaseDatabaseType} \
      ~{if defined(postgresPostgresPsqlPath) then ("--postgres_psql_path " +  '"' + postgresPostgresPsqlPath + '"') else ""} \
      ~{if defined(postgresPostgresDatabaseUser) then ("--postgres_database_user " +  '"' + postgresPostgresDatabaseUser + '"') else ""} \
      ~{if defined(postgresPostgresDatabaseHost) then ("--postgres_database_host " +  '"' + postgresPostgresDatabaseHost + '"') else ""} \
      ~{if defined(postgresPostgresDatabasePort) then ("--postgres_database_port " +  '"' + postgresPostgresDatabasePort + '"') else ""} \
      ~{if defined(dockerDockerCmd) then ("--docker_cmd " +  '"' + dockerDockerCmd + '"') else ""} \
      ~{true="--docker_sudo" false="" dockerDockerSudo} \
      ~{if defined(dockerDockerHost) then ("--docker_host " +  '"' + dockerDockerHost + '"') else ""} \
      ~{if defined(dockerDockerSudoCmd) then ("--docker_sudo_cmd " +  '"' + dockerDockerSudoCmd + '"') else ""}
  >>>
}
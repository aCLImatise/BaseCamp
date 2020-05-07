version 1.0

task PlanemoRun {
  input {
    Directory galaxyGalaxyRoot
    Boolean galaxyGalaxyPythonVersion
    File extraExtraTools
    Boolean installInstallGalaxy
    String galaxyGalaxyBranch
    String galaxyGalaxySource
    Boolean skipSkipVEnv
    Boolean noNoCacheGalaxy
    Boolean noNoCleanup
    String galaxyGalaxyEmail
    Boolean dockerDocker
    String dockerDockerCmd
    Boolean dockerDockerSudo
    String dockerDockerHost
    String dockerDockerSudoCmd
    Boolean mulledMulledContainers
    File jobJobConfigFile
    Directory toolToolDependencyDir
    Int portPort
    String hostHost
    Directory testTestData
    File toolToolDataTable
    File dependencyDependencyResolversConfigFile
    Boolean brewBrewDependencyResolution
    Boolean shedShedDependencyResolution
    Boolean noNoDependencyResolution
    Directory condCondAPrefix
    File condCondAExec
    Boolean condCondADebug
    String condCondAEnsureChannels
    Boolean condCondAUseLocal
    Boolean condCondADependencyResolution
    Boolean condCondACopyDependencies
    Boolean condCondAAutoInstall
    Boolean condCondAAutoInIt
    String profileProfile
    Boolean postgresPostgres
    Boolean databaseDatabaseType
    String postgresPostgresPsqlPath
    String postgresPostgresDatabaseUser
    String postgresPostgresDatabaseHost
    String postgresPostgresDatabasePort
    Directory fileFilePath
    String databaseDatabaseConnection
    String shedShedToolConf
    String shedShedToolPath
    Boolean galaxyGalaxySingleUser
    Boolean cwlCwl
    Directory cwlCwlGalaxyRoot
    Directory outputOutputDirectory
    File outputOutputJson
    Boolean engineEngine
    Boolean nonNonStrictCwl
    Boolean noNoContainer
    String dockerDockerGalaxyImage
    File dockerDockerExtraVolume
    Boolean ignoreIgnoreDependencyProblems
    Boolean shedShedInstall
    String galaxyGalaxyUrl
    String galaxyGalaxyAdminKey
    String galaxyGalaxyUserKey
  }
  command <<<
    planemo run \
      ~{if defined(galaxyGalaxyRoot) then ("--galaxy_root " +  '"' + galaxyGalaxyRoot + '"') else ""} \
      ~{true="--galaxy_python_version" false="" galaxyGalaxyPythonVersion} \
      ~{if defined(extraExtraTools) then ("--extra_tools " +  '"' + extraExtraTools + '"') else ""} \
      ~{true="--install_galaxy" false="" installInstallGalaxy} \
      ~{if defined(galaxyGalaxyBranch) then ("--galaxy_branch " +  '"' + galaxyGalaxyBranch + '"') else ""} \
      ~{if defined(galaxyGalaxySource) then ("--galaxy_source " +  '"' + galaxyGalaxySource + '"') else ""} \
      ~{true="--skip_venv" false="" skipSkipVEnv} \
      ~{true="--no_cache_galaxy" false="" noNoCacheGalaxy} \
      ~{true="--no_cleanup" false="" noNoCleanup} \
      ~{if defined(galaxyGalaxyEmail) then ("--galaxy_email " +  '"' + galaxyGalaxyEmail + '"') else ""} \
      ~{true="--docker" false="" dockerDocker} \
      ~{if defined(dockerDockerCmd) then ("--docker_cmd " +  '"' + dockerDockerCmd + '"') else ""} \
      ~{true="--docker_sudo" false="" dockerDockerSudo} \
      ~{if defined(dockerDockerHost) then ("--docker_host " +  '"' + dockerDockerHost + '"') else ""} \
      ~{if defined(dockerDockerSudoCmd) then ("--docker_sudo_cmd " +  '"' + dockerDockerSudoCmd + '"') else ""} \
      ~{true="--mulled_containers" false="" mulledMulledContainers} \
      ~{if defined(jobJobConfigFile) then ("--job_config_file " +  '"' + jobJobConfigFile + '"') else ""} \
      ~{if defined(toolToolDependencyDir) then ("--tool_dependency_dir " +  '"' + toolToolDependencyDir + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(testTestData) then ("--test_data " +  '"' + testTestData + '"') else ""} \
      ~{if defined(toolToolDataTable) then ("--tool_data_table " +  '"' + toolToolDataTable + '"') else ""} \
      ~{if defined(dependencyDependencyResolversConfigFile) then ("--dependency_resolvers_config_file " +  '"' + dependencyDependencyResolversConfigFile + '"') else ""} \
      ~{true="--brew_dependency_resolution" false="" brewBrewDependencyResolution} \
      ~{true="--shed_dependency_resolution" false="" shedShedDependencyResolution} \
      ~{true="--no_dependency_resolution" false="" noNoDependencyResolution} \
      ~{if defined(condCondAPrefix) then ("--conda_prefix " +  '"' + condCondAPrefix + '"') else ""} \
      ~{if defined(condCondAExec) then ("--conda_exec " +  '"' + condCondAExec + '"') else ""} \
      ~{true="--conda_debug" false="" condCondADebug} \
      ~{if defined(condCondAEnsureChannels) then ("--conda_ensure_channels " +  '"' + condCondAEnsureChannels + '"') else ""} \
      ~{true="--conda_use_local" false="" condCondAUseLocal} \
      ~{true="--conda_dependency_resolution" false="" condCondADependencyResolution} \
      ~{true="--conda_copy_dependencies" false="" condCondACopyDependencies} \
      ~{true="--conda_auto_install" false="" condCondAAutoInstall} \
      ~{true="--conda_auto_init" false="" condCondAAutoInIt} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--postgres" false="" postgresPostgres} \
      ~{true="--database_type" false="" databaseDatabaseType} \
      ~{if defined(postgresPostgresPsqlPath) then ("--postgres_psql_path " +  '"' + postgresPostgresPsqlPath + '"') else ""} \
      ~{if defined(postgresPostgresDatabaseUser) then ("--postgres_database_user " +  '"' + postgresPostgresDatabaseUser + '"') else ""} \
      ~{if defined(postgresPostgresDatabaseHost) then ("--postgres_database_host " +  '"' + postgresPostgresDatabaseHost + '"') else ""} \
      ~{if defined(postgresPostgresDatabasePort) then ("--postgres_database_port " +  '"' + postgresPostgresDatabasePort + '"') else ""} \
      ~{if defined(fileFilePath) then ("--file_path " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(databaseDatabaseConnection) then ("--database_connection " +  '"' + databaseDatabaseConnection + '"') else ""} \
      ~{if defined(shedShedToolConf) then ("--shed_tool_conf " +  '"' + shedShedToolConf + '"') else ""} \
      ~{if defined(shedShedToolPath) then ("--shed_tool_path " +  '"' + shedShedToolPath + '"') else ""} \
      ~{true="--galaxy_single_user" false="" galaxyGalaxySingleUser} \
      ~{true="--cwl" false="" cwlCwl} \
      ~{if defined(cwlCwlGalaxyRoot) then ("--cwl_galaxy_root " +  '"' + cwlCwlGalaxyRoot + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(outputOutputJson) then ("--output_json " +  '"' + outputOutputJson + '"') else ""} \
      ~{true="--engine" false="" engineEngine} \
      ~{true="--non_strict_cwl" false="" nonNonStrictCwl} \
      ~{true="--no-container" false="" noNoContainer} \
      ~{if defined(dockerDockerGalaxyImage) then ("--docker_galaxy_image " +  '"' + dockerDockerGalaxyImage + '"') else ""} \
      ~{if defined(dockerDockerExtraVolume) then ("--docker_extra_volume " +  '"' + dockerDockerExtraVolume + '"') else ""} \
      ~{true="--ignore_dependency_problems" false="" ignoreIgnoreDependencyProblems} \
      ~{true="--shed_install" false="" shedShedInstall} \
      ~{if defined(galaxyGalaxyUrl) then ("--galaxy_url " +  '"' + galaxyGalaxyUrl + '"') else ""} \
      ~{if defined(galaxyGalaxyAdminKey) then ("--galaxy_admin_key " +  '"' + galaxyGalaxyAdminKey + '"') else ""} \
      ~{if defined(galaxyGalaxyUserKey) then ("--galaxy_user_key " +  '"' + galaxyGalaxyUserKey + '"') else ""}
  >>>
}
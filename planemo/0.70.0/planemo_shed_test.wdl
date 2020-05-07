version 1.0

task PlanemoShedTest {
  input {
    Boolean recursiveRecursive
    Boolean failFailFast
    String ownerOwner
    String nameName
    String shedShedEmail
    String shedShedKey
    String shedShedKeyFromEnv
    String shedShedPassword
    String shedShedTarget
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
    Boolean updateUpdateTestData
    Boolean pastePasteTestDataPaths
    File testTestOutput
    File testTestOutputText
    File testTestOutputMarkdown
    File testTestOutputXUnit
    File testTestOutputJunit
    File testTestOutputJson
    Directory jobJobOutputFiles
    Boolean summarySummary
    Boolean skipSkipDependencies
  }
  command <<<
    planemo shed_test \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--fail_fast" false="" failFailFast} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(shedShedEmail) then ("--shed_email " +  '"' + shedShedEmail + '"') else ""} \
      ~{if defined(shedShedKey) then ("--shed_key " +  '"' + shedShedKey + '"') else ""} \
      ~{if defined(shedShedKeyFromEnv) then ("--shed_key_from_env " +  '"' + shedShedKeyFromEnv + '"') else ""} \
      ~{if defined(shedShedPassword) then ("--shed_password " +  '"' + shedShedPassword + '"') else ""} \
      ~{if defined(shedShedTarget) then ("--shed_target " +  '"' + shedShedTarget + '"') else ""} \
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
      ~{true="--update_test_data" false="" updateUpdateTestData} \
      ~{true="--paste_test_data_paths" false="" pastePasteTestDataPaths} \
      ~{if defined(testTestOutput) then ("--test_output " +  '"' + testTestOutput + '"') else ""} \
      ~{if defined(testTestOutputText) then ("--test_output_text " +  '"' + testTestOutputText + '"') else ""} \
      ~{if defined(testTestOutputMarkdown) then ("--test_output_markdown " +  '"' + testTestOutputMarkdown + '"') else ""} \
      ~{if defined(testTestOutputXUnit) then ("--test_output_xunit " +  '"' + testTestOutputXUnit + '"') else ""} \
      ~{if defined(testTestOutputJunit) then ("--test_output_junit " +  '"' + testTestOutputJunit + '"') else ""} \
      ~{if defined(testTestOutputJson) then ("--test_output_json " +  '"' + testTestOutputJson + '"') else ""} \
      ~{if defined(jobJobOutputFiles) then ("--job_output_files " +  '"' + jobJobOutputFiles + '"') else ""} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--skip_dependencies" false="" skipSkipDependencies}
  >>>
}
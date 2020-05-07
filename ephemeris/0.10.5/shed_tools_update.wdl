version 1.0

task ShedToolsUpdate {
  input {
    String toolsToolsFile
    String yamlYamlTool
    String nameName
    String ownerOwner
    Boolean revisionsRevisions
    String toolshedToolshed
    Boolean installInstallToolDependencies
    Boolean skipSkipInstallResolverDependencies
    Boolean skipSkipInstallRepositoryDependencies
    Boolean testTest
    Boolean testTestExisting
    String testTestJson
    String testTestUserApiKey
    String testTestUser
    String parallelParallelTests
    Boolean verboseVerbose
    String logLogFile
    String galaxyGalaxy
    String userUser
    String passwordPassword
    String apiApiKey
  }
  command <<<
    shed-tools update \
      ~{if defined(toolsToolsFile) then ("--toolsfile " +  '"' + toolsToolsFile + '"') else ""} \
      ~{if defined(yamlYamlTool) then ("--yaml_tool " +  '"' + yamlYamlTool + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{true="--revisions" false="" revisionsRevisions} \
      ~{if defined(toolshedToolshed) then ("--toolshed " +  '"' + toolshedToolshed + '"') else ""} \
      ~{true="--install_tool_dependencies" false="" installInstallToolDependencies} \
      ~{true="--skip_install_resolver_dependencies" false="" skipSkipInstallResolverDependencies} \
      ~{true="--skip_install_repository_dependencies" false="" skipSkipInstallRepositoryDependencies} \
      ~{true="--test" false="" testTest} \
      ~{true="--test_existing" false="" testTestExisting} \
      ~{if defined(testTestJson) then ("--test_json " +  '"' + testTestJson + '"') else ""} \
      ~{if defined(testTestUserApiKey) then ("--test_user_api_key " +  '"' + testTestUserApiKey + '"') else ""} \
      ~{if defined(testTestUser) then ("--test_user " +  '"' + testTestUser + '"') else ""} \
      ~{if defined(parallelParallelTests) then ("--parallel_tests " +  '"' + parallelParallelTests + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLogFile) then ("--log_file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""}
  >>>
}
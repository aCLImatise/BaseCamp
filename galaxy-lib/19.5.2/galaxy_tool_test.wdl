version 1.0

task GalaxyToolTest {
  input {
    String galaxyGalaxyUrl
    String keyKey
    String adminAdminKey
    Boolean forceForcePathPaste
    String toolToolId
    String toolToolVersion
    String testTestIndex
    String outputOutput
    Boolean appendAppend
    String outputOutputJson
    Boolean verboseVerbose
  }
  command <<<
    galaxy-tool-test \
      ~{if defined(galaxyGalaxyUrl) then ("--galaxy-url " +  '"' + galaxyGalaxyUrl + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(adminAdminKey) then ("--admin-key " +  '"' + adminAdminKey + '"') else ""} \
      ~{true="--force_path_paste" false="" forceForcePathPaste} \
      ~{if defined(toolToolId) then ("--tool-id " +  '"' + toolToolId + '"') else ""} \
      ~{if defined(toolToolVersion) then ("--tool-version " +  '"' + toolToolVersion + '"') else ""} \
      ~{if defined(testTestIndex) then ("--test-index " +  '"' + testTestIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--append" false="" appendAppend} \
      ~{if defined(outputOutputJson) then ("--output-json " +  '"' + outputOutputJson + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
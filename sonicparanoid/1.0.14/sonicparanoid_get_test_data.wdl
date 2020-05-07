version 1.0

task SonicparanoidGetTestData {
  input {
    String outputOutputDirectory
    Boolean debugDebug
  }
  command <<<
    sonicparanoid-get-test-data \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}
version 1.0

task PARTS {
  input {
    String? configurationConfigurationFile
  }
  command <<<
    PARTS \
      ~{configurationConfigurationFile}
  >>>
}
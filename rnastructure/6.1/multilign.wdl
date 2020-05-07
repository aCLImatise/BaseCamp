version 1.0

task Multilign {
  input {
    String? configurationConfigurationFile
  }
  command <<<
    multilign \
      ~{configurationConfigurationFile}
  >>>
}
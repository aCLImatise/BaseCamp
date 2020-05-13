version 1.0

task TurboFold {
  input {
    String? configurationConfigurationFile
  }
  command <<<
    TurboFold \
      ~{configurationConfigurationFile}
  >>>
}
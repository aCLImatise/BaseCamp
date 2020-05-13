version 1.0

task TurboFoldSmp {
  input {
    String? configurationConfigurationFile
  }
  command <<<
    TurboFold-smp \
      ~{configurationConfigurationFile}
  >>>
}
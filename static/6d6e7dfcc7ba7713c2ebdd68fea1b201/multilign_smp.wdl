version 1.0

task MultilignSmp {
  input {
    String? configurationConfigurationFile
  }
  command <<<
    multilign-smp \
      ~{configurationConfigurationFile}
  >>>
}
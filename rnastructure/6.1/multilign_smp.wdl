version 1.0

task MultilignSmp {
  input {
    String configuration_file
  }
  command <<<
    multilign-smp \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
}
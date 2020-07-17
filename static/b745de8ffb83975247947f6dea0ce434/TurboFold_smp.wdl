version 1.0

task TurboFoldSmp {
  input {
    String configuration_file
  }
  command <<<
    TurboFold-smp \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
}
version 1.0

task TurboFold {
  input {
    String configuration_file
  }
  command <<<
    TurboFold \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
}
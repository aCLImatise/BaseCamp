version 1.0

task Multilign {
  input {
    String configuration_file
  }
  command <<<
    multilign \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
}
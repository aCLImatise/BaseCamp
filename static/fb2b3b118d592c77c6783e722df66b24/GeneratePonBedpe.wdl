version 1.0

task GeneratePonBedpe {
  input {
    String normal_dot
  }
  command <<<
    GeneratePonBedpe \
      ~{normal_dot}
  >>>
  parameter_meta {
    normal_dot: "Default value: 75.0. This option can be set to 'null' to clear the default value."
  }
}
version 1.0

task Phame {
  input {
    String control_file
  }
  command <<<
    phame \
      ~{control_file}
  >>>
  parameter_meta {
    control_file: ""
  }
}
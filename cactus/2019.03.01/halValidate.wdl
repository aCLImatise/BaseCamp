version 1.0

task HalValidate {
  input {
    String hal_file
  }
  command <<<
    halValidate \
      ~{hal_file}
  >>>
  parameter_meta {
    hal_file: ""
  }
}
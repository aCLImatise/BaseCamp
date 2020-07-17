version 1.0

task HalTestGen {
  input {
    String hal_file
  }
  command <<<
    halTestGen \
      ~{hal_file}
  >>>
  parameter_meta {
    hal_file: ""
  }
}
version 1.0

task Yes {
  input {
    String? var_string
  }
  command <<<
    yes \
      ~{var_string}
  >>>
  parameter_meta {
    var_string: ""
  }
  output {
    File out_stdout = stdout()
  }
}
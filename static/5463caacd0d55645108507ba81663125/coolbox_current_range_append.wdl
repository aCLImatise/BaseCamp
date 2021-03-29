version 1.0

task CoolboxCurrentRangeAppend {
  input {
    String var_object
  }
  command <<<
    coolbox current_range append \
      ~{var_object}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    var_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}
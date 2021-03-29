version 1.0

task CoolboxLoadModule {
  input {
    String mod_str
  }
  command <<<
    coolbox load_module \
      ~{mod_str}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    mod_str: ""
  }
  output {
    File out_stdout = stdout()
  }
}
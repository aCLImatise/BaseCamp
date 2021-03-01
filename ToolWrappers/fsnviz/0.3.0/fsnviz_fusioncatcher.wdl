version 1.0

task FsnvizFusioncatcher {
  input {
    String var_input
  }
  command <<<
    fsnviz fusioncatcher \
      ~{var_input}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}
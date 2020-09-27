version 1.0

task FsnvizFusioncatcher {
  input {
    String var_input
  }
  command <<<
    fsnviz fusioncatcher \
      ~{var_input}
  >>>
  parameter_meta {
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}
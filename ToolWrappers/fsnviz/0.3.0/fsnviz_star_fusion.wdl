version 1.0

task FsnvizStarfusion {
  input {
    String var_input
  }
  command <<<
    fsnviz star_fusion \
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
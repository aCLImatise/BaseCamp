version 1.0

task FsnvizStarFusion {
  input {
    String var_input
  }
  command <<<
    fsnviz star-fusion \
      ~{var_input}
  >>>
  parameter_meta {
    var_input: ""
  }
}
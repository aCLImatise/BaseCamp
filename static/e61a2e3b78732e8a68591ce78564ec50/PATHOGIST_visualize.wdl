version 1.0

task PATHOGISTVisualize {
  input {
    String var_input
  }
  command <<<
    PATHOGIST visualize \
      ~{var_input}
  >>>
  parameter_meta {
    var_input: ""
  }
}
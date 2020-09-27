version 1.0

task PATHOGISTVisualizeFormat {
  input {
    String pathog_ist
    String visualize
    String var_input
  }
  command <<<
    PATHOGIST visualize format \
      ~{pathog_ist} \
      ~{visualize} \
      ~{var_input}
  >>>
  parameter_meta {
    pathog_ist: ""
    visualize: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}
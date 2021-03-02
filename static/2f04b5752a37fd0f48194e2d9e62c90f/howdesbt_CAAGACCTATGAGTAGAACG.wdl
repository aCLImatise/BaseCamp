version 1.0

task HowdesbtCAAGACCTATGAGTAGAACG {
  input {
    String how_des_bt
    String var_command
    String? arguments
  }
  command <<<
    howdesbt CAAGACCTATGAGTAGAACG \
      ~{how_des_bt} \
      ~{var_command} \
      ~{arguments}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    how_des_bt: ""
    var_command: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}
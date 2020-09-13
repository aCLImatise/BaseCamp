version 1.0

task ChakinScripts {
  input {
    String chak_in
    String var_command
    String? args
  }
  command <<<
    chakin scripts_ \
      ~{chak_in} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    chak_in: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
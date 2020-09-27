version 1.0

task QuasitoolsDataset {
  input {
    String quasi_tools
    String var_command
    String? args
  }
  command <<<
    quasitools dataset_ \
      ~{quasi_tools} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    quasi_tools: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
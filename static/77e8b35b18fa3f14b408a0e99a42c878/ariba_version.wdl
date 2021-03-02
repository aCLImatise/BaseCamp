version 1.0

task AribaVersion {
  input {
    String ariba
    String var_command
    String options
  }
  command <<<
    ariba version \
      ~{ariba} \
      ~{var_command} \
      ~{options}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ariba: ""
    var_command: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
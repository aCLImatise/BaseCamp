version 1.0

task DrdiscoBlacklisted {
  input {
    String dr_disco
    String var_command
    String? args
  }
  command <<<
    dr_disco blacklisted_ \
      ~{dr_disco} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dr_disco: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
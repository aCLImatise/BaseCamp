version 1.0

task PlanemoFactory {
  input {
    String plane_mo
    String var_command
    String? args
  }
  command <<<
    planemo Factory___ \
      ~{plane_mo} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    plane_mo: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
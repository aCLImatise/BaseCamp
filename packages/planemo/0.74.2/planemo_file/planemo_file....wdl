version 1.0

task PlanemoFile {
  input {
    String plane_mo
    String var_command
    String? args
  }
  command <<<
    planemo file___ \
      ~{plane_mo} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
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
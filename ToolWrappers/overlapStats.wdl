version 1.0

task OverlapStats {
  input {
    String? var_0
    String? var_1
    String? g
  }
  command <<<
    overlapStats \
      ~{if defined(var_0) then ("-o " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-O " +  '"' + var_1 + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}
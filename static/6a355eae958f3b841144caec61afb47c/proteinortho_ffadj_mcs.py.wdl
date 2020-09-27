version 1.0

task ProteinorthoFfadjMcspy {
  input {
    String? g
    String? m
    String? r
  }
  command <<<
    proteinortho_ffadj_mcs_py \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""} \
      ~{if defined(r) then ("-R " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    m: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}
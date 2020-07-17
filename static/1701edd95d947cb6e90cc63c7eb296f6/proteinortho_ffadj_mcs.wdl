version 1.0

task ProteinorthoFfadjMcs.py {
  input {
    String? r
    String? m
    String? g
  }
  command <<<
    proteinortho_ffadj_mcs.py \
      ~{if defined(r) then ("-R " +  '"' + r + '"') else ""} \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    m: ""
    g: ""
  }
}
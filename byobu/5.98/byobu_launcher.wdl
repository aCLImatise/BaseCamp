version 1.0

task ByobuLauncher {
  input {
    Boolean? two_clu_vv
    String? c
    File? f
    String? l
    String t_mux
  }
  command <<<
    byobu-launcher \
      ~{t_mux} \
      ~{true="-2CluvV" false="" two_clu_vv} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    two_clu_vv: ""
    c: ""
    f: ""
    l: ""
    t_mux: ""
  }
}
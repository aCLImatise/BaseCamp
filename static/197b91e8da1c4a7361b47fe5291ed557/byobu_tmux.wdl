version 1.0

task Byobutmux {
  input {
    String? l
    File? f
    String? c
    Boolean? two_clu_vv
    String t_mux
  }
  command <<<
    byobu_tmux \
      ~{t_mux} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if (two_clu_vv) then "-2CluvV" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    l: ""
    f: ""
    c: ""
    two_clu_vv: ""
    t_mux: ""
  }
  output {
    File out_stdout = stdout()
  }
}
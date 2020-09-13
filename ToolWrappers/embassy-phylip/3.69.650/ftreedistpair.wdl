version 1.0

task Ftreedistpair {
  input {
    Boolean? d_type
    Boolean? pairing
    Boolean? style
    Boolean? no_root
    Boolean? out_gr_no
    Boolean? progress
  }
  command <<<
    ftreedistpair \
      ~{if (d_type) then "-dtype" else ""} \
      ~{if (pairing) then "-pairing" else ""} \
      ~{if (style) then "-style" else ""} \
      ~{if (no_root) then "-noroot" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (progress) then "-progress" else ""}
  >>>
  parameter_meta {
    d_type: "menu       [b] Distance type (Values: s (Symmetric\\ndifference); b (Branch score distance))"
    pairing: "menu       [l] Tree pairing method (Values: c\\n(Distances between corresponding pairs each\\ntree file); l (Distances between all\\npossible pairs in each tree file))"
    style: "menu       [v] Distances output option (Values: f\\n(Full_matrix); v (Verbose, one pair per\\nline); s (Sparse, one pair per line))"
    no_root: "boolean    [N] Trees to be treated as rooted"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    progress: "boolean    [N] Print indications of progress of run"
  }
  output {
    File out_stdout = stdout()
  }
}
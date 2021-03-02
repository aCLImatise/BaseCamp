version 1.0

task Ftreedist {
  input {
    Boolean? d_type
    Boolean? pairing
    Boolean? style
    Boolean? no_root
    Boolean? out_gr_no
    File additional_optional_qualifiers
  }
  command <<<
    _ftreedist \
      ~{additional_optional_qualifiers} \
      ~{if (d_type) then "-dtype" else ""} \
      ~{if (pairing) then "-pairing" else ""} \
      ~{if (style) then "-style" else ""} \
      ~{if (no_root) then "-noroot" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d_type: "menu       [b] Distance type (Values: s (Symmetric\\ndifference); b (Branch score distance))"
    pairing: "menu       [a] Tree pairing method (Values: a\\n(Distances between adjacent pairs in tree\\nfile); p (Distances between all possible\\npairs in tree file))"
    style: "menu       [v] Distances output option (Values: f (Full\\nmatrix); v (Verbose, one pair per line); s\\n(Sparse, one pair per line))"
    no_root: "boolean    [N] Trees to be treated as rooted"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    additional_optional_qualifiers: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Fprotpars {
  input {
    Boolean? weights
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? which_code
    Boolean? print_data
    Boolean? step_box
    Boolean? an_cseq
    String alignments
    File additional_optional_qualifiers
  }
  command <<<
    fprotpars \
      ~{alignments} \
      ~{additional_optional_qualifiers} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (do_threshold) then "-dothreshold" else ""} \
      ~{if (which_code) then "-whichcode" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (step_box) then "-stepbox" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    which_code: "menu       [Universal] Use which genetic code (Values:\\nU (Universal); M (Mitochondrial); V\\n(Vertebrate mitochondrial); F (Fly\\nmitochondrial); Y (Yeast mitochondrial))"
    print_data: "boolean    [N] Print data at start of run"
    step_box: "boolean    [N] Print steps at each site"
    an_cseq: "boolean    [N] Print sequences at all nodes of tree"
    alignments: "[-intreefile]        tree       Phylip tree file (optional)"
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}
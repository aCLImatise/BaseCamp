version 1.0

task Fdnapars {
  input {
    Boolean? weights
    Boolean? max_trees
    Boolean? transversion
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? print_data
    Boolean? step_box
    Boolean? an_cseq
    String alignments
    File additional_optional_qualifiers
  }
  command <<<
    _fdnapars \
      ~{alignments} \
      ~{additional_optional_qualifiers} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (max_trees) then "-maxtrees" else ""} \
      ~{if (transversion) then "-transversion" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (do_threshold) then "-dothreshold" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (step_box) then "-stepbox" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weights: "properties Weights file"
    max_trees: "integer    [10000] Number of trees to save (Integer\\nfrom 1 to 1000000)"
    transversion: "boolean    [N] Use transversion parsimony"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    print_data: "boolean    [N] Print data at start of run"
    step_box: "boolean    [N] Print out steps in each site"
    an_cseq: "boolean    [N] Print sequences at all nodes of tree"
    alignments: "[-intreefile]        tree       Phylip tree file (optional)"
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}
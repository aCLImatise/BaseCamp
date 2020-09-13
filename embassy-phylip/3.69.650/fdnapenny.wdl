version 1.0

task Fdnapenny {
  input {
    Boolean? weights
    Boolean? how_often
    Boolean? how_many
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? print_data
    Boolean? step_box
    Boolean? an_cseq
    String alignments
    File file
  }
  command <<<
    fdnapenny \
      ~{alignments} \
      ~{file} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (how_often) then "-howoften" else ""} \
      ~{if (how_many) then "-howmany" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (do_threshold) then "-dothreshold" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (step_box) then "-stepbox" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""}
  >>>
  parameter_meta {
    weights: "properties (no help text) properties value"
    how_often: "integer    [100] How often to report, in trees (Any\\ninteger value)"
    how_many: "integer    [1000] How many groups of trees (Any integer\\nvalue)"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    print_data: "boolean    [N] Print data at start of run"
    step_box: "boolean    [N] Print out steps in each site"
    an_cseq: "boolean    [N] Print sequences at all nodes of tree"
    alignments: "[-outfile]           outfile    [*.fdnapenny] Phylip dnapenny program output"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}
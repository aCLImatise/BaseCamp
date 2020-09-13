version 1.0

task Fpenny {
  input {
    Boolean? weights
    Boolean? anc_file
    File? mix_file
    Boolean? method
    Boolean? out_gr_no
    Boolean? how_many
    Boolean? how_often
    Boolean? simple
    Boolean? threshold
    Boolean? print_data
    Boolean? step_box
    Boolean? an_cseq
  }
  command <<<
    _fpenny \
      ~{if (weights) then "-weights" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (mix_file) then "-mixfile" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (how_many) then "-howmany" else ""} \
      ~{if (how_often) then "-howoften" else ""} \
      ~{if (simple) then "-simple" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (step_box) then "-stepbox" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    anc_file: "properties Phylip ancestral states file (optional)"
    mix_file: "properties Phylip mix output file (optional)"
    method: "menu       [Wagner] Choose the method to use (Values:\\nWag (Wagner); Cam (Camin-Sokal); Mix\\n(Mixed))"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    how_many: "integer    [1000] How many groups of trees (Any integer\\nvalue)"
    how_often: "integer    [100] How often to report, in trees (Any\\ninteger value)"
    simple: "boolean    Branch and bound is simple"
    threshold: "float      [$(infile.discretesize)] Threshold value\\n(Number 1.000 or more)"
    print_data: "boolean    [N] Print data at start of run"
    step_box: "boolean    [N] Print out steps in each site"
    an_cseq: "boolean    [N] Print states at all nodes of tree"
  }
  output {
    File out_stdout = stdout()
    File out_mix_file = "${in_mix_file}"
  }
}
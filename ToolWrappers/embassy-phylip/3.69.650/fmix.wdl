version 1.0

task Fmix {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? mix_file
    Boolean? method
    Boolean? out_gr_no
    Boolean? threshold
    Boolean? print_data
    Boolean? an_cseq
    Boolean? step_box
  }
  command <<<
    fmix \
      ~{if (weights) then "-weights" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (mix_file) then "-mixfile" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""} \
      ~{if (step_box) then "-stepbox" else ""}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    mix_file: "properties Mixture file"
    method: "menu       [Wagner] Choose the method to use (Values: w\\n(Wagner); c (Camin-Sokal); m (Mixed))"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    threshold: "float      [$(infile.discretesize)] Threshold value\\n(Number 1.000 or more)"
    print_data: "boolean    [N] Print data at start of run"
    an_cseq: "boolean    [N] Print states at all nodes of tree"
    step_box: "boolean    [N] Print out steps in each character"
  }
  output {
    File out_stdout = stdout()
  }
}
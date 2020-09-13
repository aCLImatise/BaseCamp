version 1.0

task Fdollop {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? method
    Boolean? threshold
    Boolean? print_data
    Boolean? an_cseq
    Boolean? step_box
    File file
  }
  command <<<
    fdollop \
      ~{file} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""} \
      ~{if (step_box) then "-stepbox" else ""}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    anc_file: "properties Ancestral states file"
    method: "menu       [d] Parsimony method (Values: d (Dollo); p\\n(Polymorphism))"
    threshold: "float      [$(infile.discretesize)] Threshold value\\n(Number 0.000 or more)"
    print_data: "boolean    [N] Print data at start of run"
    an_cseq: "boolean    [N] Print states at all nodes of tree"
    step_box: "boolean    [N] Print out steps in each character"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}
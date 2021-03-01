version 1.0

task Fdolpenny {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? do_threshold
    Boolean? how_many
    Boolean? how_often
    Boolean? method
    Boolean? print_data
    Boolean? an_cseq
    Boolean? step_box
    File additional_optional_qualifiers
  }
  command <<<
    fdolpenny \
      ~{additional_optional_qualifiers} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (do_threshold) then "-dothreshold" else ""} \
      ~{if (how_many) then "-howmany" else ""} \
      ~{if (how_often) then "-howoften" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (an_cseq) then "-ancseq" else ""} \
      ~{if (step_box) then "-stepbox" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    do_threshold: "toggle     [N] Use threshold parsimony"
    how_many: "integer    [1000] How many groups of trees (Any integer\\nvalue)"
    how_often: "integer    [100] How often to report, in trees (Any\\ninteger value)"
    method: "menu       [d] Parsimony method (Values: d (Dollo); p\\n(Polymorphism))"
    print_data: "boolean    [N] Print data at start of run"
    an_cseq: "boolean    [N] Print states at all nodes of tree"
    step_box: "boolean    [N] Print out steps in each character"
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}
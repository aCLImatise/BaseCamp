version 1.0

task Fpars {
  input {
    Boolean? weights
    Boolean? method
    Boolean? max_trees
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? print_data
    Boolean? step_box
    Boolean? an_cseq
  }
  command <<<
    fpars \
      ~{if (weights) then "-weights" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (max_trees) then "-maxtrees" else ""} \
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
    method: "menu       [Wagner] Choose the parsimony method to use\\n(Values: w (Wagner); c (Camin-Sokal))"
    max_trees: "integer    [100] Number of trees to save (Integer from\\n1 to 1000000)"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    print_data: "boolean    [N] Print data at start of run"
    step_box: "boolean    [N] Print steps at each site"
    an_cseq: "boolean    [N] Print states at all nodes of tree"
  }
  output {
    File out_stdout = stdout()
  }
}
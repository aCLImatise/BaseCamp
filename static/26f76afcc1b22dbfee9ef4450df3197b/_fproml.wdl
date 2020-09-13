version 1.0

task Fproml {
  input {
    Boolean? n_categories
    Boolean? weights
    Boolean? model
    Boolean? gamma_type
    Boolean? out_gr_no
    Boolean? print_data
    Boolean? hyp_state
    String alignments
  }
  command <<<
    _fproml \
      ~{alignments} \
      ~{if (n_categories) then "-ncategories" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if (gamma_type) then "-gammatype" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (hyp_state) then "-hypstate" else ""}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories\\n(Integer from 1 to 9)"
    weights: "properties Weights file"
    model: "menu       [Jones-Taylor-Thornton] Probability model\\nfor amino acid change (Values: j\\n(Jones-Taylor-Thornton); h (Henikoff/Tillier\\nPMBs); d (Dayhoff PAM))"
    gamma_type: "menu       [Constant rate] Rate variation among sites\\n(Values: g (Gamma distributed rates); i\\n(Gamma+invariant sites); h (User defined HMM\\nof rates); n (Constant rate))"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    print_data: "boolean    [N] Print data at start of run"
    hyp_state: "boolean    [N] Reconstruct hypothetical sequence"
    alignments: "[-intreefile]        tree       Phylip tree file (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}
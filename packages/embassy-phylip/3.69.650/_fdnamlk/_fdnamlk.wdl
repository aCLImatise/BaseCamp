version 1.0

task Fdnamlk {
  input {
    Boolean? n_categories
    Boolean? weights
    Boolean? tt_ratio
    Boolean? gamma_type
    Boolean? print_data
    Boolean? hyp_state
    String alignments
    File file
  }
  command <<<
    _fdnamlk \
      ~{alignments} \
      ~{file} \
      ~{if (n_categories) then "-ncategories" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (tt_ratio) then "-ttratio" else ""} \
      ~{if (gamma_type) then "-gammatype" else ""} \
      ~{if (print_data) then "-printdata" else ""} \
      ~{if (hyp_state) then "-hypstate" else ""}
  >>>
  parameter_meta {
    n_categories: "integer    [1] Number of substitution rate categories\\n(Integer from 1 to 9)"
    weights: "properties Weights file"
    tt_ratio: "float      [2.0] Transition/transversion ratio (Number\\n0.001 or more)"
    gamma_type: "menu       [Constant rate] Rate variation among sites\\n(Values: g (Gamma distributed rates); i\\n(Gamma+invariant sites); h (User defined HMM\\nof rates); n (Constant rate))"
    print_data: "boolean    [N] Print data at start of run"
    hyp_state: "boolean    [N] Reconstruct hypothetical sequence"
    alignments: "[-intreefile]        tree       Phylip tree file (optional)"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}
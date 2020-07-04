version 1.0

task PlotBmprobs {
  input {
    String plot_bm_probs
    String in
    String out
  }
  command <<<
    plot-bmprobs \
      ~{plot_bm_probs} \
      ~{in} \
      ~{out}
  >>>
  parameter_meta {
    plot_bm_probs: ""
    in: ""
    out: ""
  }
}
version 1.0

task AxtToMaf {
  input {
    Boolean? score
    Boolean? score_zero
    String in_do_tax_t
    String t_sizes
    String q_sizes
    String out_dot_maf
  }
  command <<<
    axtToMaf \
      ~{in_do_tax_t} \
      ~{t_sizes} \
      ~{q_sizes} \
      ~{out_dot_maf} \
      ~{true="-score" false="" score} \
      ~{true="-scoreZero" false="" score_zero}
  >>>
  parameter_meta {
    score: "- recalculate score "
    score_zero: "- recalculate score if zero "
    in_do_tax_t: ""
    t_sizes: ""
    q_sizes: ""
    out_dot_maf: ""
  }
}
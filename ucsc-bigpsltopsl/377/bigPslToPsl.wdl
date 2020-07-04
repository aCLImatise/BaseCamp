version 1.0

task BigPslToPsl {
  input {
    Boolean? collapse_strand
    String big_psl_dot_bb
    String output_dot_psl
  }
  command <<<
    bigPslToPsl \
      ~{big_psl_dot_bb} \
      ~{output_dot_psl} \
      ~{true="-collapseStrand" false="" collapse_strand}
  >>>
  parameter_meta {
    collapse_strand: "if target strand is '+', don't output it"
    big_psl_dot_bb: ""
    output_dot_psl: ""
  }
}
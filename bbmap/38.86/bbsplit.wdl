version 1.0

task Bbsplit.sh {
  input {
    String var_0
    String var_1
    String random
    String retain_topscoring_sites
    String var_4
    String var_5
    String write_copy_output
    String split
  }
  command <<<
    bbsplit.sh \
      ~{var_0} \
      ~{var_1} \
      ~{random} \
      ~{retain_topscoring_sites} \
      ~{var_4} \
      ~{var_5} \
      ~{write_copy_output} \
      ~{split}
  >>>
  parameter_meta {
    var_0: "(use the first best site)"
    var_1: "(consider unmapped)"
    random: "(select one top-scoring site randomly)"
    retain_topscoring_sites: "(retain all top-scoring sites.  Does not work yet with SAM output)"
    var_4: "(use the first best site)"
    var_5: "(consider unmapped)"
    write_copy_output: "(write a copy to the output for each reference to which it maps)"
    split: "(write a copy to the AMBIGUOUS_ output for each reference to which it maps)"
  }
}
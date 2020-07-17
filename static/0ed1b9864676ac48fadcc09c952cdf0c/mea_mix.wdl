version 1.0

task MeaMix {
  input {
    String? gamma_one
    String? gamma_two
    String? reference
    Boolean? no_slide_rule
    Boolean? no_conflict_rule
    Boolean? verbose
    String me_a
    String dotplot_one_filename
    String dotplot_two_filename
  }
  command <<<
    mea_mix \
      ~{me_a} \
      ~{dotplot_one_filename} \
      ~{dotplot_two_filename} \
      ~{if defined(gamma_one) then ("--gamma1 " +  '"' + gamma_one + '"') else ""} \
      ~{if defined(gamma_two) then ("--gamma2 " +  '"' + gamma_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--no-slide-rule" false="" no_slide_rule} \
      ~{true="--no-conflict-rule" false="" no_conflict_rule} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    gamma_one: "base pair weight factor, first pair probabilities (default=`1.0')"
    gamma_two: "base pair weight factor, second pair probabilities (default=`1.0')"
    reference: "Reference structure; if given, then output TP FP FN TN SENS PPV F1 MCC"
    no_slide_rule: "Use slide rule [default: use slide rule]"
    no_conflict_rule: "Use conflict rule [default: use conflict rule]"
    verbose: "Turn on verbose output"
    me_a: ""
    dotplot_one_filename: ""
    dotplot_two_filename: ""
  }
}
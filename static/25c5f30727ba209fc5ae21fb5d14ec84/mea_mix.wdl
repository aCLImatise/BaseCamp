version 1.0

task MeaMix {
  input {
    Int? gamma_one
    Int? gamma_two
    Int? reference
    Boolean? no_slide_rule
    Boolean? no_conflict_rule
    Boolean? verbose
    String me_a
    Int dotplot_one_filename
    Int dotplot_two_filename
  }
  command <<<
    mea_mix \
      ~{me_a} \
      ~{dotplot_one_filename} \
      ~{dotplot_two_filename} \
      ~{if defined(gamma_one) then ("--gamma1 " +  '"' + gamma_one + '"') else ""} \
      ~{if defined(gamma_two) then ("--gamma2 " +  '"' + gamma_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (no_slide_rule) then "--no-slide-rule" else ""} \
      ~{if (no_conflict_rule) then "--no-conflict-rule" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    gamma_one: "base pair weight factor, first pair probabilities\\n(default=`1.0')"
    gamma_two: "base pair weight factor, second pair probabilities\\n(default=`1.0')"
    reference: "Reference structure; if given, then output TP FP FN\\nTN SENS PPV F1 MCC"
    no_slide_rule: "Use slide rule [default: use slide rule]"
    no_conflict_rule: "Use conflict rule [default: use conflict rule]"
    verbose: "Turn on verbose output"
    me_a: ""
    dotplot_one_filename: ""
    dotplot_two_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}
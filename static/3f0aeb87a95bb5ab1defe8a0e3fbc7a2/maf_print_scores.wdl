version 1.0

task MafPrintScores.py {
  input {
    Boolean? recalculate
    Boolean? l_norm
  }
  command <<<
    maf_print_scores.py \
      ~{true="--recalculate" false="" recalculate} \
      ~{true="--lnorm" false="" l_norm}
  >>>
  parameter_meta {
    recalculate: "don't use the score from the maf, recalculate (using hox70 matrix)"
    l_norm: "divide (normalize) score by alignment text length"
  }
}
version 1.0

task MafPrintScores.py {
  input {
    Boolean recalculateRecalculate
    Boolean lLNorm
  }
  command <<<
    maf_print_scores.py \
      ~{true="--recalculate" false="" recalculateRecalculate} \
      ~{true="--lnorm" false="" lLNorm}
  >>>
}
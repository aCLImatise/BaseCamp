version 1.0

task RgtHintEvaluation {
  input {
    Boolean printPrintRocCurve
    Boolean printPrintPrCurve
  }
  command <<<
    rgt-hint evaluation \
      ~{true="--print-roc-curve" false="" printPrintRocCurve} \
      ~{true="--print-pr-curve" false="" printPrintPrCurve}
  >>>
}
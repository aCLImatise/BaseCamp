version 1.0

task Prune {
  input {
    Int distanceDistance
    String evalEvalParam
    Boolean isIsSorted
    String outputOutput
  }
  command <<<
    prune \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(evalEvalParam) then ("--eval_param " +  '"' + evalEvalParam + '"') else ""} \
      ~{true="--is_sorted" false="" isIsSorted} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
version 1.0

task GetSuperReadInsertCountsFromReadPlacementFile {
  input {
    File inputInput
    File outputOutput
    Boolean fibFib
    Boolean bloomBloom
    String numberNumberReads
    String? cmdlineCmdlineParse
  }
  command <<<
    getSuperReadInsertCountsFromReadPlacementFile \
      ~{cmdlineCmdlineParse} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--fib" false="" fibFib} \
      ~{true="--bloom" false="" bloomBloom} \
      ~{if defined(numberNumberReads) then ("--number-reads " +  '"' + numberNumberReads + '"') else ""}
  >>>
}
version 1.0

task GetSuperReadInsertCountsFromReadPlacementFileTwoPasses {
  input {
    File outputOutput
    Boolean fibFib
    String numberNumberReads
    Boolean debugDebug
  }
  command <<<
    getSuperReadInsertCountsFromReadPlacementFileTwoPasses \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--fib" false="" fibFib} \
      ~{if defined(numberNumberReads) then ("--number-reads " +  '"' + numberNumberReads + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}
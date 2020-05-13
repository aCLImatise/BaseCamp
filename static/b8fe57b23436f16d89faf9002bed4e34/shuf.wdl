version 1.0

task Shuf {
  input {
    Boolean echoEcho
    String inputInputRange
    String headHeadCount
    File outputOutput
    File randomRandomSource
    Boolean repeatRepeat
    Boolean zeroZeroTerminated
  }
  command <<<
    shuf \
      ~{true="--echo" false="" echoEcho} \
      ~{if defined(inputInputRange) then ("--input-range " +  '"' + inputInputRange + '"') else ""} \
      ~{if defined(headHeadCount) then ("--head-count " +  '"' + headHeadCount + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(randomRandomSource) then ("--random-source " +  '"' + randomRandomSource + '"') else ""} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}
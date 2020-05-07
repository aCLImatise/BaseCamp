version 1.0

task Comm {
  input {
    Boolean checkCheckOrder
    Boolean noNoCheckOrder
    String outputOutputDelimiter
    Boolean zeroZeroTerminated
  }
  command <<<
    comm \
      ~{true="--check-order" false="" checkCheckOrder} \
      ~{true="--nocheck-order" false="" noNoCheckOrder} \
      ~{if defined(outputOutputDelimiter) then ("--output-delimiter " +  '"' + outputOutputDelimiter + '"') else ""} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}
version 1.0

task BpMutate.pl {
  input {
    String percentPercent
    Boolean numberNumber
    Boolean outputOutput
    Boolean formatFormat
    Boolean inputInput
  }
  command <<<
    bp_mutate.pl \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{true="--number" false="" numberNumber} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--input" false="" inputInput}
  >>>
}
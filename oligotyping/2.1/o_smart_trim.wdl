version 1.0

task OSmartTrim {
  input {
    String minMinPercent
    Boolean fromFromEnd
    Boolean fromFromStart
    String outputOutput
  }
  command <<<
    o-smart-trim \
      ~{if defined(minMinPercent) then ("--min-percent " +  '"' + minMinPercent + '"') else ""} \
      ~{true="--from-end" false="" fromFromEnd} \
      ~{true="--from-start" false="" fromFromStart} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
version 1.0

task CpinsimSimulate {
  input {
    File outputOutputGraph
    File outputOutputLog
    String? proteinsProteins
  }
  command <<<
    cpinsim simulate \
      ~{proteinsProteins} \
      ~{if defined(outputOutputGraph) then ("--output-graph " +  '"' + outputOutputGraph + '"') else ""} \
      ~{if defined(outputOutputLog) then ("--output-log " +  '"' + outputOutputLog + '"') else ""}
  >>>
}
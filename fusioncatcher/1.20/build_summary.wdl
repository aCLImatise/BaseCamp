version 1.0

task BuildSummary.py {
  input {
    String inputInput
    String virusesViruses
    String outputOutput
  }
  command <<<
    build_summary.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(virusesViruses) then ("--viruses " +  '"' + virusesViruses + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
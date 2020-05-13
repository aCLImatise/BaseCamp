version 1.0

task SummarizeMiso {
  input {
    String summarizeSummarizeSamples
    String summarySummaryLabel
    String useUseCompressed
  }
  command <<<
    summarize_miso \
      ~{if defined(summarizeSummarizeSamples) then ("--summarize-samples " +  '"' + summarizeSummarizeSamples + '"') else ""} \
      ~{if defined(summarySummaryLabel) then ("--summary-label " +  '"' + summarySummaryLabel + '"') else ""} \
      ~{if defined(useUseCompressed) then ("--use-compressed " +  '"' + useUseCompressed + '"') else ""}
  >>>
}
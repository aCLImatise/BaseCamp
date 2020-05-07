version 1.0

task DesignNaively.py {
  input {
    Boolean addAddReverseComplements
    String limitLimitTargetGenomes
    String limitLimitTargetGenomesRandomlyWithReplacement
    Boolean printPrintAnalysis
    Boolean debugDebug
    Boolean verboseVerbose
    String? datasetDataset
  }
  command <<<
    design_naively.py \
      ~{datasetDataset} \
      ~{true="--add-reverse-complements" false="" addAddReverseComplements} \
      ~{if defined(limitLimitTargetGenomes) then ("--limit-target-genomes " +  '"' + limitLimitTargetGenomes + '"') else ""} \
      ~{if defined(limitLimitTargetGenomesRandomlyWithReplacement) then ("--limit-target-genomes-randomly-with-replacement " +  '"' + limitLimitTargetGenomesRandomlyWithReplacement + '"') else ""} \
      ~{true="--print-analysis" false="" printPrintAnalysis} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
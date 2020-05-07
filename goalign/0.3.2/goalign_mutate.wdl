version 1.0

task GoalignMutate {
  input {
    String outputOutput
    Float rateRate
    String alignAlign
    Boolean autoAutoDetect
    Boolean clustalClustal
    Boolean ignoreIgnoreIdentical
    Boolean inputInputStrict
    Boolean nexusNexus
    Boolean noNoBlock
    Boolean oneOneLine
    Boolean outputOutputStrict
    Boolean phylipPhylip
    Int seedSeed
    Int threadsThreads
    String? gapsGaps
    String? snSnVs
  }
  command <<<
    goalign mutate \
      ~{gapsGaps} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(rateRate) then ("--rate " +  '"' + rateRate + '"') else ""} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{true="--auto-detect" false="" autoAutoDetect} \
      ~{true="--clustal" false="" clustalClustal} \
      ~{true="--ignore-identical" false="" ignoreIgnoreIdentical} \
      ~{true="--input-strict" false="" inputInputStrict} \
      ~{true="--nexus" false="" nexusNexus} \
      ~{true="--no-block" false="" noNoBlock} \
      ~{true="--one-line" false="" oneOneLine} \
      ~{true="--output-strict" false="" outputOutputStrict} \
      ~{true="--phylip" false="" phylipPhylip} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{snSnVs}
  >>>
}
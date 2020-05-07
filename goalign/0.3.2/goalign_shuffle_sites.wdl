version 1.0

task GoalignShuffleSites {
  input {
    Float rateRate
    Float rogueRogue
    String rogueRogueFile
    Boolean stableStableRogues
    String alignAlign
    Boolean autoAutoDetect
    Boolean clustalClustal
    Boolean ignoreIgnoreIdentical
    Boolean inputInputStrict
    Boolean nexusNexus
    Boolean noNoBlock
    Boolean oneOneLine
    String outputOutput
    Boolean outputOutputStrict
    Boolean phylipPhylip
    Int seedSeed
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    goalign shuffle sites \
      ~{flagsFlags} \
      ~{if defined(rateRate) then ("--rate " +  '"' + rateRate + '"') else ""} \
      ~{if defined(rogueRogue) then ("--rogue " +  '"' + rogueRogue + '"') else ""} \
      ~{if defined(rogueRogueFile) then ("--rogue-file " +  '"' + rogueRogueFile + '"') else ""} \
      ~{true="--stable-rogues" false="" stableStableRogues} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{true="--auto-detect" false="" autoAutoDetect} \
      ~{true="--clustal" false="" clustalClustal} \
      ~{true="--ignore-identical" false="" ignoreIgnoreIdentical} \
      ~{true="--input-strict" false="" inputInputStrict} \
      ~{true="--nexus" false="" nexusNexus} \
      ~{true="--no-block" false="" noNoBlock} \
      ~{true="--one-line" false="" oneOneLine} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-strict" false="" outputOutputStrict} \
      ~{true="--phylip" false="" phylipPhylip} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}
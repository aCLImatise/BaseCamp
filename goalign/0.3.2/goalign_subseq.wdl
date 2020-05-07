version 1.0

task GoalignSubseq {
  input {
    Int lengthLength
    String outputOutput
    Int startStart
    Int stepStep
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
    String? flagsFlags
  }
  command <<<
    goalign subseq \
      ~{flagsFlags} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
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
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}
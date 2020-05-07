version 1.0

task GoalignBuildSeqboot {
  input {
    Boolean gzGz
    Int nNBoot
    String outOutPartition
    String outOutPrefix
    String partitionPartition
    Boolean sSHufOrder
    Boolean tarTar
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
    goalign build seqboot \
      ~{flagsFlags} \
      ~{true="--gz" false="" gzGz} \
      ~{if defined(nNBoot) then ("--nboot " +  '"' + nNBoot + '"') else ""} \
      ~{if defined(outOutPartition) then ("--out-partition " +  '"' + outOutPartition + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out-prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(partitionPartition) then ("--partition " +  '"' + partitionPartition + '"') else ""} \
      ~{true="--shuf-order" false="" sSHufOrder} \
      ~{true="--tar" false="" tarTar} \
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
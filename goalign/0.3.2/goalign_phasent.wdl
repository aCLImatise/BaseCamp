version 1.0

task GoalignPhasent {
  input {
    String aaAaOutput
    Boolean cutCutEnd
    Float gapGapExtend
    Float gapGapOpen
    String geneticGeneticCode
    Float lenLenCutOff
    String logLog
    Float matchMatch
    Float matchMatchCutOff
    Float mismatchMismatch
    String ntNtOutput
    String outputOutput
    String refRefOrf
    Boolean reverseReverse
    Boolean unalignedUnaligned
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
    goalign phasent \
      ~{flagsFlags} \
      ~{if defined(aaAaOutput) then ("--aa-output " +  '"' + aaAaOutput + '"') else ""} \
      ~{true="--cut-end" false="" cutCutEnd} \
      ~{if defined(gapGapExtend) then ("--gap-extend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(geneticGeneticCode) then ("--genetic-code " +  '"' + geneticGeneticCode + '"') else ""} \
      ~{if defined(lenLenCutOff) then ("--len-cutoff " +  '"' + lenLenCutOff + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(matchMatchCutOff) then ("--match-cutoff " +  '"' + matchMatchCutOff + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(ntNtOutput) then ("--nt-output " +  '"' + ntNtOutput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(refRefOrf) then ("--ref-orf " +  '"' + refRefOrf + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--unaligned" false="" unalignedUnaligned} \
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
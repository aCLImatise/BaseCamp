version 1.0

task MaltExtract {
  input {
    String topTop
    Boolean deDeStackingOff
    Boolean downDownSampOff
    Boolean dupreDupreMOff
    String filterFilter
    String inputInput
    Boolean matchesMatches
    Int maxMaxReadLength
    Boolean meganMeganSummary
    String minMinComp
    String minMinPi
    String outputOutput
    Int threadsThreads
    String resourcesResources
    Boolean readsReads
    Boolean singleSingleStranded
    String taxTaxA
    Boolean useUseTopAlignment
    Boolean verboseVerbose
  }
  command <<<
    MaltExtract \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{true="--destackingOff" false="" deDeStackingOff} \
      ~{true="--downSampOff" false="" downDownSampOff} \
      ~{true="--dupRemOff" false="" dupreDupreMOff} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--matches" false="" matchesMatches} \
      ~{if defined(maxMaxReadLength) then ("--maxReadLength " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{true="--meganSummary" false="" meganMeganSummary} \
      ~{if defined(minMinComp) then ("--minComp " +  '"' + minMinComp + '"') else ""} \
      ~{if defined(minMinPi) then ("--minPI " +  '"' + minMinPi + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(resourcesResources) then ("--resources " +  '"' + resourcesResources + '"') else ""} \
      ~{true="--reads" false="" readsReads} \
      ~{true="--singleStranded" false="" singleSingleStranded} \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{true="--useTopAlignment" false="" useUseTopAlignment} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
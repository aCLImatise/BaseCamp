version 1.0

task GanonClassify {
  input {
    String singleSingleReads
    String pairedPairedReads
    String ibfIbf
    String mapMap
    String taxTax
    String hierarchyHierarchyLabels
    String minMinKmErs
    String maxMaxError
    String maxMaxErrorUnique
    String strataStrataFilter
    String offsetOffset
    String outputOutputPrefix
    Boolean outputOutputAll
    Boolean outputOutputUnclassified
    Boolean outputOutputSingle
    String threadsThreads
    String nNReads
    String nNBatches
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    ganon-classify \
      ~{if defined(singleSingleReads) then ("--single-reads " +  '"' + singleSingleReads + '"') else ""} \
      ~{if defined(pairedPairedReads) then ("--paired-reads " +  '"' + pairedPairedReads + '"') else ""} \
      ~{if defined(ibfIbf) then ("--ibf " +  '"' + ibfIbf + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(taxTax) then ("--tax " +  '"' + taxTax + '"') else ""} \
      ~{if defined(hierarchyHierarchyLabels) then ("--hierarchy-labels " +  '"' + hierarchyHierarchyLabels + '"') else ""} \
      ~{if defined(minMinKmErs) then ("--min-kmers " +  '"' + minMinKmErs + '"') else ""} \
      ~{if defined(maxMaxError) then ("--max-error " +  '"' + maxMaxError + '"') else ""} \
      ~{if defined(maxMaxErrorUnique) then ("--max-error-unique " +  '"' + maxMaxErrorUnique + '"') else ""} \
      ~{if defined(strataStrataFilter) then ("--strata-filter " +  '"' + strataStrataFilter + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--output-all" false="" outputOutputAll} \
      ~{true="--output-unclassified" false="" outputOutputUnclassified} \
      ~{true="--output-single" false="" outputOutputSingle} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(nNReads) then ("--n-reads " +  '"' + nNReads + '"') else ""} \
      ~{if defined(nNBatches) then ("--n-batches " +  '"' + nNBatches + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}
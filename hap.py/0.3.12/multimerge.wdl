version 1.0

task Multimerge {
  input {
    String inputInputFile
    Boolean oO
    Boolean rR
    Boolean lL
    Boolean rR
    Boolean tT
    String limitLimitRecords
    String messageMessageEvery
    Boolean fF
    String leftLeftShift
    String trimTrimAlleles
    String splitSplitAlleles
    String mergeMergeByLocation
    String uniqueUniqueAlleles
    String homHomRefSplit
    String homHomRefVcfOut
    String callsCallsOnly
    String primitivesPrimitives
    String processProcessSplit
    String processProcessFull
    String processProcessFormats
  }
  command <<<
    multimerge \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-R" false="" rR} \
      ~{true="-T" false="" tT} \
      ~{if defined(limitLimitRecords) then ("--limit-records " +  '"' + limitLimitRecords + '"') else ""} \
      ~{if defined(messageMessageEvery) then ("--message-every " +  '"' + messageMessageEvery + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(leftLeftShift) then ("--leftshift " +  '"' + leftLeftShift + '"') else ""} \
      ~{if defined(trimTrimAlleles) then ("--trimalleles " +  '"' + trimTrimAlleles + '"') else ""} \
      ~{if defined(splitSplitAlleles) then ("--splitalleles " +  '"' + splitSplitAlleles + '"') else ""} \
      ~{if defined(mergeMergeByLocation) then ("--merge-by-location " +  '"' + mergeMergeByLocation + '"') else ""} \
      ~{if defined(uniqueUniqueAlleles) then ("--unique-alleles " +  '"' + uniqueUniqueAlleles + '"') else ""} \
      ~{if defined(homHomRefSplit) then ("--homref-split " +  '"' + homHomRefSplit + '"') else ""} \
      ~{if defined(homHomRefVcfOut) then ("--homref-vcf-out " +  '"' + homHomRefVcfOut + '"') else ""} \
      ~{if defined(callsCallsOnly) then ("--calls-only " +  '"' + callsCallsOnly + '"') else ""} \
      ~{if defined(primitivesPrimitives) then ("--primitives " +  '"' + primitivesPrimitives + '"') else ""} \
      ~{if defined(processProcessSplit) then ("--process-split " +  '"' + processProcessSplit + '"') else ""} \
      ~{if defined(processProcessFull) then ("--process-full " +  '"' + processProcessFull + '"') else ""} \
      ~{if defined(processProcessFormats) then ("--process-formats " +  '"' + processProcessFormats + '"') else ""}
  >>>
}
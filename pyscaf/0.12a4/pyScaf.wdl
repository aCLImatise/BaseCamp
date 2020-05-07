version 1.0

task PyScaf {
  input {
    String fastFastA
    String outputOutput
    String threadsThreads
    String logLog
    Boolean dotplotDotplot
    String referenceReference
    String identityIdentity
    String overlapOverlap
    Int maxMaxGap
    Boolean noNoRearrangements
    Array[String]+ longLongReads
    Array[String]+ fastFastQ
    String joinsJoins
    String linkLinkRatio
    String loadLoad
    String mapqMapq
  }
  command <<<
    pyScaf \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--dotplot" false="" dotplotDotplot} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--maxgap " +  '"' + maxMaxGap + '"') else ""} \
      ~{true="--norearrangements" false="" noNoRearrangements} \
      ~{if defined(longLongReads) then ("--longreads " +  '"' + longLongReads + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(joinsJoins) then ("--joins " +  '"' + joinsJoins + '"') else ""} \
      ~{if defined(linkLinkRatio) then ("--linkratio " +  '"' + linkLinkRatio + '"') else ""} \
      ~{if defined(loadLoad) then ("--load " +  '"' + loadLoad + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""}
  >>>
}
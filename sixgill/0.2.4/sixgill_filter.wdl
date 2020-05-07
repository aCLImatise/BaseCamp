version 1.0

task SixgillFilter {
  input {
    String outOut
    Int minorMinorFLength
    Int minaMinaASeqLength
    Int minMinReadCount
    Int minMinQualScore
    Int minMinLongestTrypPepleN
    Int minMinMetaGeneScore
    Int maxMaxMetaPeptides
    Boolean noNoGzipOut
    Boolean debugDebug
    String? metaMetaPeptideFile
  }
  command <<<
    sixgill_filter \
      ~{metaMetaPeptideFile} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minorMinorFLength) then ("--minorflength " +  '"' + minorMinorFLength + '"') else ""} \
      ~{if defined(minaMinaASeqLength) then ("--minaaseqlength " +  '"' + minaMinaASeqLength + '"') else ""} \
      ~{if defined(minMinReadCount) then ("--minreadcount " +  '"' + minMinReadCount + '"') else ""} \
      ~{if defined(minMinQualScore) then ("--minqualscore " +  '"' + minMinQualScore + '"') else ""} \
      ~{if defined(minMinLongestTrypPepleN) then ("--minlongesttryppeplen " +  '"' + minMinLongestTrypPepleN + '"') else ""} \
      ~{if defined(minMinMetaGeneScore) then ("--minmetagenescore " +  '"' + minMinMetaGeneScore + '"') else ""} \
      ~{if defined(maxMaxMetaPeptides) then ("--maxmetapeptides " +  '"' + maxMaxMetaPeptides + '"') else ""} \
      ~{true="--nogzipout" false="" noNoGzipOut} \
      ~{true="--debug" false="" debugDebug}
  >>>
}
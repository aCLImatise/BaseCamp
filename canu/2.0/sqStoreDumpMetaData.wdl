version 1.0

task SqStoreDumpMetaData {
  input {
    String sS
    Boolean libsLibs
    Boolean readsReads
    Boolean statsStats
    Boolean histogramHistogram
    Boolean lengthsLengths
    String rR
    Boolean rawRaw
    Boolean correctedCorrected
    Boolean trimmedTrimmed
    Boolean compressedCompressed
  }
  command <<<
    sqStoreDumpMetaData \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="-libs" false="" libsLibs} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-stats" false="" statsStats} \
      ~{true="-histogram" false="" histogramHistogram} \
      ~{true="-lengths" false="" lengthsLengths} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-corrected" false="" correctedCorrected} \
      ~{true="-trimmed" false="" trimmedTrimmed} \
      ~{true="-compressed" false="" compressedCompressed}
  >>>
}
version 1.0

task Glistquery {
  input {
    Boolean statStat
    Boolean medianMedian
    Int distributionDistribution
    Boolean gcGc
    Boolean queryQuery
    Boolean queryQueryFile
    Boolean seqSeqFile
    Boolean listListFile
    String mismatchMismatch
    String perfectPerfectMatch
    String minMinFreq
    String maxMaxFreq
    Boolean allAll
    Boolean dD
    String? inputInputList
    String? optionsOptions
  }
  command <<<
    glistquery \
      ~{inputInputList} \
      ~{true="-stat" false="" statStat} \
      ~{true="-median" false="" medianMedian} \
      ~{if defined(distributionDistribution) then ("-distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{true="-gc" false="" gcGc} \
      ~{true="--query" false="" queryQuery} \
      ~{true="--queryfile" false="" queryQueryFile} \
      ~{true="--seqfile" false="" seqSeqFile} \
      ~{true="--listfile" false="" listListFile} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(perfectPerfectMatch) then ("--perfectmatch " +  '"' + perfectPerfectMatch + '"') else ""} \
      ~{if defined(minMinFreq) then ("--minfreq " +  '"' + minMinFreq + '"') else ""} \
      ~{if defined(maxMaxFreq) then ("--maxfreq " +  '"' + maxMaxFreq + '"') else ""} \
      ~{true="-all" false="" allAll} \
      ~{true="-D" false="" dD} \
      ~{optionsOptions}
  >>>
}
version 1.0

task FilterShrimp.pl {
  input {
    String minMinScore
    Boolean uniqUniq
    String uniqUniqThresh
    Boolean bestBest
    String commonCommonGeneFile
    Boolean verboseVerbose
  }
  command <<<
    filterShrimp.pl \
      ~{if defined(minMinScore) then ("--minScore " +  '"' + minMinScore + '"') else ""} \
      ~{true="--uniq" false="" uniqUniq} \
      ~{if defined(uniqUniqThresh) then ("--uniqthresh " +  '"' + uniqUniqThresh + '"') else ""} \
      ~{true="--best" false="" bestBest} \
      ~{if defined(commonCommonGeneFile) then ("--commongenefile " +  '"' + commonCommonGeneFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
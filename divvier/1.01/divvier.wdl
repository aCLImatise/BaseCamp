version 1.0

task Divvier {
  input {
    Boolean divvyDivvy
    Boolean partialPartial
    String threshThresh
    String approxApprox
    Boolean checkCheckSplits
    Boolean hmmHmmApprox
    Boolean hmmHmmExact
    String minMinCol
    Boolean divvyDivvyGap
  }
  command <<<
    divvier \
      ~{true="-divvy" false="" divvyDivvy} \
      ~{true="-partial" false="" partialPartial} \
      ~{if defined(threshThresh) then ("-thresh " +  '"' + threshThresh + '"') else ""} \
      ~{if defined(approxApprox) then ("-approx " +  '"' + approxApprox + '"') else ""} \
      ~{true="-checksplits" false="" checkCheckSplits} \
      ~{true="-HMMapprox" false="" hmmHmmApprox} \
      ~{true="-HMMexact" false="" hmmHmmExact} \
      ~{if defined(minMinCol) then ("-mincol " +  '"' + minMinCol + '"') else ""} \
      ~{true="-divvygap" false="" divvyDivvyGap}
  >>>
}
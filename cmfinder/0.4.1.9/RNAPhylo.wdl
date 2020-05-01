version 1.0

task RNAPhylo {
  input {
    String tT
    String sS
    String pP
    String gG
    Boolean lL
    Boolean partitionPartition
    String inInFormat
    Boolean degenDegenIsAbsent
    Boolean fragmentaryFragmentary
    Boolean onlyOnlySsCons
    String gapGapThresh
    Int partitionPartitionCloseToFuzzyLimit
    Int suspiciousSuspiciousDegenNUcs
    Boolean ignoreIgnoreAllGap
  }
  command <<<
    RNAPhylo \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--l" false="" lL} \
      ~{true="--partition" false="" partitionPartition} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--degen-is-absent" false="" degenDegenIsAbsent} \
      ~{true="--fragmentary" false="" fragmentaryFragmentary} \
      ~{true="--only-ss-cons" false="" onlyOnlySsCons} \
      ~{if defined(gapGapThresh) then ("--gap-thresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(partitionPartitionCloseToFuzzyLimit) then ("--partition-close-to-fuzzy-limit " +  '"' + partitionPartitionCloseToFuzzyLimit + '"') else ""} \
      ~{if defined(suspiciousSuspiciousDegenNUcs) then ("--suspicious-degen-nucs " +  '"' + suspiciousSuspiciousDegenNUcs + '"') else ""} \
      ~{true="--ignore-all-gap" false="" ignoreIgnoreAllGap}
  >>>
}
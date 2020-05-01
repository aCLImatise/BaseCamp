version 1.0

task GuidescanBamdata {
  input {
    String nN
    String labelLabel
    String gG
    String dD
    Int maxMaxOffCount
    String tT
  }
  command <<<
    guidescan_bamdata \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(maxMaxOffCount) then ("--maxoffcount " +  '"' + maxMaxOffCount + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}
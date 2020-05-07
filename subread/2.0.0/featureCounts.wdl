version 1.0

task FeatureCounts {
  input {
    String fF
    String tT
    String gG
    Boolean extraExtraAttributes
    String aA
    Boolean fF
    Boolean readRead2pos
    Boolean mM
    Boolean fractionFraction
    Int qQ
    Boolean splitSplitOnly
    Boolean nonNonSplitOnly
    Boolean primaryPrimary
    Boolean ignoredIgnoredUp
    Int sS
    Boolean jJ
    String gG
    Boolean pP
    Boolean bB
    Boolean pP
    Int dD
    Int dD
    Boolean cC
    Boolean doDoNotSort
    Int tT
    Boolean byByReadGroup
    Boolean lL
    String rR
    String rpathRpath
    String tmpdirTmpdir
    Int maxMaxMop
    Boolean verboseVerbose
    Boolean vV
  }
  command <<<
    featureCounts \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--extraAttributes" false="" extraExtraAttributes} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="--read2pos" false="" readRead2pos} \
      ~{true="-M" false="" mM} \
      ~{true="--fraction" false="" fractionFraction} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{true="--splitOnly" false="" splitSplitOnly} \
      ~{true="--nonSplitOnly" false="" nonNonSplitOnly} \
      ~{true="--primary" false="" primaryPrimary} \
      ~{true="--ignoreDup" false="" ignoredIgnoredUp} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-J" false="" jJ} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-B" false="" bB} \
      ~{true="-P" false="" pP} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{true="--donotsort" false="" doDoNotSort} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="--byReadGroup" false="" byByReadGroup} \
      ~{true="-L" false="" lL} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(rpathRpath) then ("--Rpath " +  '"' + rpathRpath + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpDir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(maxMaxMop) then ("--maxMOp " +  '"' + maxMaxMop + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-v" false="" vV}
  >>>
}
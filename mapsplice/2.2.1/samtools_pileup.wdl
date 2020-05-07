version 1.0

task SamtoolsPileup {
  input {
    Boolean iI
    Int qQ
    Int cC
    Int mM
    Int mM
    Int dD
    File tT
    File lL
    File fF
    Boolean cC
    Boolean vV
    Boolean gG
    Float tT
    Int nN
    Float rR
    Float gG
    Int iI
  }
  command <<<
    samtools pileup \
      ~{true="-i" false="" iI} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV} \
      ~{true="-g" false="" gG} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""}
  >>>
}
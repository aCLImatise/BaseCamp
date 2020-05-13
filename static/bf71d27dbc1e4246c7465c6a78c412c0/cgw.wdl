version 1.0

task Cgw {
  input {
    Boolean cC
    String dD
    Boolean eE
    String eE
    Boolean fF
    Boolean gG
    Boolean gG
    Boolean ggGg
    Boolean iI
    String iI
    String jJ
    Boolean kK
    String kK
    Boolean mM
    Int mM
    String nN
    Boolean oO
    Int pP
    String rR
    String rR
    String sS
    String sS
    String shatterShatter
    String missingMissingMate
    String minMinMergeWeight
    Boolean recomputeRecomputeGaps
    Boolean reloadReloadMates
    Boolean uU
    File uU
    Boolean vV
    Boolean zZ
    Boolean zZ
  }
  command <<<
    cgw \
      ~{true="-C" false="" cC} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-E" false="" eE} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-G" false="" gG} \
      ~{true="-GG" false="" ggGg} \
      ~{true="-I" false="" iI} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{true="-K" false="" kK} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(shatterShatter) then ("-shatter " +  '"' + shatterShatter + '"') else ""} \
      ~{if defined(missingMissingMate) then ("-missingMate " +  '"' + missingMissingMate + '"') else ""} \
      ~{if defined(minMinMergeWeight) then ("-minmergeweight " +  '"' + minMinMergeWeight + '"') else ""} \
      ~{true="-recomputegaps" false="" recomputeRecomputeGaps} \
      ~{true="-reloadmates" false="" reloadReloadMates} \
      ~{true="-U" false="" uU} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-Z" false="" zZ} \
      ~{true="-z" false="" zZ}
  >>>
}
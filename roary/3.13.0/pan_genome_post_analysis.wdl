version 1.0

task PanGenomePostAnalysis {
  input {
    Boolean aA
    Boolean bB
    String cC
    Float cdCd
    Boolean dD
    Boolean eE
    String fF
    Int gG
    String iI
    Boolean mM
    Boolean nN
    String oO
    String pP
    Boolean qQ
    String sS
    Int tT
    Int zZ
    Boolean vV
  }
  command <<<
    pan_genome_post_analysis \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cdCd) then ("-cd " +  '"' + cdCd + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}
version 1.0

task CreatePanGenome {
  input {
    Int pP
    String oO
    String fF
    Boolean eE
    Boolean nN
    Boolean iI
    Float cdCd
    Boolean zZ
    Int tT
    Boolean vV
    Boolean yY
    Int gG
    Boolean qcQc
    String kK
    Boolean wW
    Boolean aA
  }
  command <<<
    create_pan_genome \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-n" false="" nN} \
      ~{true="-i" false="" iI} \
      ~{if defined(cdCd) then ("-cd " +  '"' + cdCd + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-y" false="" yY} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-qc" false="" qcQc} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-a" false="" aA}
  >>>
}
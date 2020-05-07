version 1.0

task Roary {
  input {
    Int pP
    String oO
    String fF
    Boolean eE
    Boolean nN
    Boolean iI
    Float cdCd
    Boolean qcQc
    String kK
    Boolean aA
    String bB
    String cC
    String dD
    Int gG
    String mM
    Boolean rR
    Boolean sS
    Int tT
    Boolean apAp
    Boolean zZ
    Boolean vV
    Boolean wW
    Boolean yY
    String ivIv
  }
  command <<<
    roary \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-n" false="" nN} \
      ~{true="-i" false="" iI} \
      ~{if defined(cdCd) then ("-cd " +  '"' + cdCd + '"') else ""} \
      ~{true="-qc" false="" qcQc} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-ap" false="" apAp} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV} \
      ~{true="-w" false="" wW} \
      ~{true="-y" false="" yY} \
      ~{if defined(ivIv) then ("-iv " +  '"' + ivIv + '"') else ""}
  >>>
}
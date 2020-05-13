version 1.0

task BASIC.py {
  input {
    String iI
    String pP
    String nN
    String seSe
    String pePe1
    String pePe2
    String gG
    String bB
    String tT
    String oO
    Boolean aA
    Boolean vV
    String dD
    String subsampleSubsample
  }
  command <<<
    BASIC.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(seSe) then ("-SE " +  '"' + seSe + '"') else ""} \
      ~{if defined(pePe1) then ("-PE_1 " +  '"' + pePe1 + '"') else ""} \
      ~{if defined(pePe2) then ("-PE_2 " +  '"' + pePe2 + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-v" false="" vV} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""}
  >>>
}
version 1.0

task ChimChe {
  input {
    String qQ
    String dD
    String kK
    String gG
    Int mM
    String fF
    String tT
  }
  command <<<
    chimChe \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}
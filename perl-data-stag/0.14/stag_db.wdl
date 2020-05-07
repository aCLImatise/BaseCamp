version 1.0

task StagDb.pl {
  input {
    String iI
    String rR
    String kK
    String uU
    String pP
    String qQ
    String topTop
    String qfQf
    Boolean keysKeys
    String wW
  }
  command <<<
    stag-db.pl \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(topTop) then ("-top " +  '"' + topTop + '"') else ""} \
      ~{if defined(qfQf) then ("-qf " +  '"' + qfQf + '"') else ""} \
      ~{true="-keys" false="" keysKeys} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}
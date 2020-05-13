version 1.0

task Qfilt {
  input {
    String fF
    String qQ
    String oO
    String qQ
    Int lL
    String mM
    Boolean sS
    Boolean pP
    Boolean aA
    String pP
    String rR
    String tT
    String tT
    String fF
    Boolean jJ
  }
  command <<<
    qfilt \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-j" false="" jJ}
  >>>
}
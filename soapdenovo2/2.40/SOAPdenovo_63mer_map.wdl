version 1.0

task SOAPdenovo63merMap {
  input {
    String sS
    String gG
    Boolean fF
    Int pP
    Int kK
  }
  command <<<
    SOAPdenovo-63mer map \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}
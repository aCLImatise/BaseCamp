version 1.0

task ShortReadConnector.sh {
  input {
    String bB
    String qQ
    String cC
    Int wW
    String pP
    String gG
    Int kK
    Int fF
    Int gG
    Int aA
    String lL
    Int tT
    Int sS
    Int sS
    String aA
    Boolean rR
    String? shSh
    String? shortShortReadConnectorsH
    String? optionsOptions
  }
  command <<<
    short_read_connector.sh \
      ~{shSh} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{shortShortReadConnectorsH} \
      ~{optionsOptions}
  >>>
}
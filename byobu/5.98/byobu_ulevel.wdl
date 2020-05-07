version 1.0

task ByobuUlevel {
  input {
    Boolean aA
    Boolean bB
    String cC
    Boolean dD
    Int eE
    Boolean iI
    Boolean lL
    String mM
    Boolean nN
    Boolean pP
    Boolean qQ
    Boolean rR
    String tT
    String uU
    Int wW
    String xX
  }
  command <<<
    byobu-ulevel \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-r" false="" rR} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}
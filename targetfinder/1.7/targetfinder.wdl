version 1.0

task Targetfinder.pl {
  input {
    String sS
    File dD
    String qQ
    Float cC
    Int tT
    String pP
    Boolean rR
  }
  command <<<
    targetfinder.pl \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-r" false="" rR}
  >>>
}
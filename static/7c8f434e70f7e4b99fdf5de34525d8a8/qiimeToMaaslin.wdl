version 1.0

task QiimeToMaaslin.py {
  input {
    Boolean nN
    String sS
    Int mM
    String tT
    Boolean lL
    String xX
  }
  command <<<
    qiimeToMaaslin.py \
      ~{true="-n" false="" nN} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}
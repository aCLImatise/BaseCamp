version 1.0

task SOAPdenovoTrans127merMap {
  input {
    Boolean sS
    Boolean gG
    Boolean fF
    Boolean rR
    Boolean pP
  }
  command <<<
    SOAPdenovo-Trans-127mer map \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-f" false="" fF} \
      ~{true="-R" false="" rR} \
      ~{true="-p" false="" pP}
  >>>
}
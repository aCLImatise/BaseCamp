version 1.0

task SOAPdenovoTrans127merPregraph {
  input {
    Boolean sS
    Boolean oO
    Boolean kK
    Boolean pP
    Boolean dD
  }
  command <<<
    SOAPdenovo-Trans-127mer pregraph \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-K" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD}
  >>>
}
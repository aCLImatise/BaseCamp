version 1.0

task SOAPdenovoTrans31merPregraph {
  input {
    Boolean sS
    Boolean oO
    Boolean kK
    Boolean pP
    Boolean dD
  }
  command <<<
    SOAPdenovo-Trans-31mer pregraph \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-K" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD}
  >>>
}
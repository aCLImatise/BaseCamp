version 1.0

task SOAPdenovoTrans31merScaff {
  input {
    Boolean gG
    Boolean rR
    Boolean sS
    Boolean fF
    Boolean pP
    Boolean lL
    Boolean tT
    Boolean gG
  }
  command <<<
    SOAPdenovo-Trans-31mer scaff \
      ~{true="-g" false="" gG} \
      ~{true="-R" false="" rR} \
      ~{true="-S" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-p" false="" pP} \
      ~{true="-L" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="-G" false="" gG}
  >>>
}
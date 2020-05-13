version 1.0

task SOAPdenovoTrans127merAll {
  input {
    Boolean sS
    Boolean oO
    Boolean rR
    Boolean fF
    Boolean sS
    Boolean fF
    Boolean kK
    Boolean pP
    Boolean dD
    Boolean eE
    Boolean mM
    Boolean lL
    Boolean tT
    Boolean gG
  }
  command <<<
    SOAPdenovo-Trans-127mer all \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-S" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-K" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-M" false="" mM} \
      ~{true="-L" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="-G" false="" gG}
  >>>
}
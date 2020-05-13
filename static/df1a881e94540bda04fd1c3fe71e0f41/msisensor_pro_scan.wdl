version 1.0

task MsisensorProScan {
  input {
    Boolean dD
    Boolean oO
    Boolean lL
    Boolean cC
    Boolean mM
    Boolean sS
    Boolean rR
    Boolean pP
  }
  command <<<
    msisensor-pro scan \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-l" false="" lL} \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP}
  >>>
}
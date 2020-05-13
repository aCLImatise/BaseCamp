version 1.0

task DBdump {
  input {
    Boolean rR
    Boolean sS
    Boolean aA
    Boolean iI
    Boolean qQ
    Boolean pP
    Boolean mM
    Boolean uU
    Boolean uU
  }
  command <<<
    DBdump \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-a" false="" aA} \
      ~{true="-i" false="" iI} \
      ~{true="-q" false="" qQ} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{true="-U" false="" uU}
  >>>
}
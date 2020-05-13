version 1.0

task DBshow {
  input {
    Boolean uU
    Boolean qQ
    Boolean aA
    Boolean nN
    Boolean mM
    Boolean qQ
    Boolean aA
    Boolean uU
    Boolean wW
  }
  command <<<
    DBshow \
      ~{true="-u" false="" uU} \
      ~{true="-q" false="" qQ} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-m" false="" mM} \
      ~{true="-Q" false="" qQ} \
      ~{true="-A" false="" aA} \
      ~{true="-U" false="" uU} \
      ~{true="-w" false="" wW}
  >>>
}
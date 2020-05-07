version 1.0

task Out2XML {
  input {
    Boolean mM
    Boolean aA
    Boolean mM
    Boolean allAll
    Boolean piPi
    Boolean pP
    Boolean eE
  }
  command <<<
    Out2XML \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-M" false="" mM} \
      ~{true="-all" false="" allAll} \
      ~{true="-pI" false="" piPi} \
      ~{true="-P" false="" pP} \
      ~{true="-E" false="" eE}
  >>>
}
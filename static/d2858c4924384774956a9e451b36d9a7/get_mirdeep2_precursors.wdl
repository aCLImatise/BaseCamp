version 1.0

task GetMirdeep2Precursors.pl {
  input {
    Boolean sS
    Boolean tT
    Boolean dD
    Boolean pP
    Boolean mM
    Boolean kK
    Boolean tT
    Boolean oO
  }
  command <<<
    get_mirdeep2_precursors.pl \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-k" false="" kK} \
      ~{true="-T" false="" tT} \
      ~{true="-o" false="" oO}
  >>>
}
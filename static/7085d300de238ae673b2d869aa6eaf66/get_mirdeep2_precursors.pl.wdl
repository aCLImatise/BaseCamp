version 1.0

task GetMirdeep2Precursors.pl.orig {
  input {
    Boolean sS
    Boolean tT
    Boolean dD
    Boolean pP
    Boolean mM
    Boolean kK
    Boolean tT
    Boolean oO
    String? getGetMirdeep2PrecursorsPl
  }
  command <<<
    get_mirdeep2_precursors.pl.orig \
      ~{getGetMirdeep2PrecursorsPl} \
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
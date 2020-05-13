version 1.0

task BlibFilter {
  input {
    Boolean mM
    Boolean nN
    Boolean sS
    Boolean bB
    Boolean pP
    Boolean vV
    String? redundantRedundantLibrary
    String? filteredFilteredLibrary
  }
  command <<<
    BlibFilter \
      ~{redundantRedundantLibrary} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-b" false="" bB} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV} \
      ~{filteredFilteredLibrary}
  >>>
}
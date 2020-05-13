version 1.0

task BlibToMs2 {
  input {
    Boolean fF
    Boolean mM
    Boolean iI
    Boolean pP
    Boolean pP
    Boolean vV
    String? libraryLibrary
  }
  command <<<
    BlibToMs2 \
      ~{libraryLibrary} \
      ~{true="-f" false="" fF} \
      ~{true="-m" false="" mM} \
      ~{true="-i" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV}
  >>>
}
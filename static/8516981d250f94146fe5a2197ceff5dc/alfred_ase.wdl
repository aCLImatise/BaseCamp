version 1.0

task AlfredAse {
  input {
    Boolean mM
    Boolean bB
    Boolean rR
    Boolean sS
    Boolean aA
    Boolean vV
    Boolean pP
    Boolean fF
    String? optionsOptions
    String? inputInputBam
  }
  command <<<
    alfred ase \
      ~{optionsOptions} \
      ~{true="-m" false="" mM} \
      ~{true="-b" false="" bB} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-a" false="" aA} \
      ~{true="-v" false="" vV} \
      ~{true="-p" false="" pP} \
      ~{true="-f" false="" fF} \
      ~{inputInputBam}
  >>>
}
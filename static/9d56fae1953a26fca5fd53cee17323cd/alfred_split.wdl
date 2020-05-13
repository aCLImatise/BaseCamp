version 1.0

task AlfredSplit {
  input {
    Boolean mM
    Boolean rR
    Boolean pP
    Boolean qQ
    Boolean sS
    Boolean vV
    Boolean aA
    Boolean iI
    String? optionsOptions
    String? unUnPhasedBam
  }
  command <<<
    alfred split \
      ~{optionsOptions} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA} \
      ~{true="-i" false="" iI} \
      ~{unUnPhasedBam}
  >>>
}
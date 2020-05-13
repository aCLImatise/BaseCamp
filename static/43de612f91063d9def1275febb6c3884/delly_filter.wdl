version 1.0

task DellyFilter {
  input {
    Boolean fF
    Boolean oO
    Boolean aA
    Boolean mM
    Boolean nN
    Boolean rR
    Boolean pP
    Boolean sS
    Boolean vV
    Boolean cC
    Boolean qQ
    Boolean eE
    Boolean uU
    String? optionsOptions
    String? inputInputBcf
  }
  command <<<
    delly filter \
      ~{optionsOptions} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-q" false="" qQ} \
      ~{true="-e" false="" eE} \
      ~{true="-u" false="" uU} \
      ~{inputInputBcf}
  >>>
}
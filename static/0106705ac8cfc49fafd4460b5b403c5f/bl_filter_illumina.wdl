version 1.0

task BlFilterIllumina {
  input {
    Boolean iI
    Boolean oO
    Boolean uU
    Boolean fF
    Boolean tT
    Boolean qQ
    Boolean nN
    Boolean aA
    Boolean bB
    Boolean sS
  }
  command <<<
    bl-filter-illumina \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-u" false="" uU} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{true="-n" false="" nN} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS}
  >>>
}
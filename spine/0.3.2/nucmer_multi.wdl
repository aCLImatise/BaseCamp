version 1.0

task NucmerMulti.pl {
  input {
    Boolean fF
    Boolean nN
    Boolean aA
    Boolean tT
    Boolean oO
    Boolean sS
    Boolean bB
    Boolean vV
  }
  command <<<
    nucmer_multi.pl \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN} \
      ~{true="-a" false="" aA} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-b" false="" bB} \
      ~{true="-V" false="" vV}
  >>>
}
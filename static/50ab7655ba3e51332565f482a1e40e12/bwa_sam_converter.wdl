version 1.0

task BwaSamConverter.pl {
  input {
    Boolean iI
    Boolean oO
    Boolean aA
    Boolean cC
    Boolean tT
    Boolean nN
  }
  command <<<
    bwa_sam_converter.pl \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-n" false="" nN}
  >>>
}
version 1.0

task LofreqVcfset {
  input {
    Boolean oO
    Boolean aA
    Boolean iI
  }
  command <<<
    lofreq vcfset \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-I" false="" iI}
  >>>
}
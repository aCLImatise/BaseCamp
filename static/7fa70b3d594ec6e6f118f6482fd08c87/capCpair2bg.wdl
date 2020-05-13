version 1.0

task CapCpair2bg {
  input {
    Boolean iI
    Boolean oO
    Boolean nN
    Boolean tT
    Boolean interInterChrom
    String? optionsOptions
  }
  command <<<
    capCpair2bg \
      ~{optionsOptions} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="--interchrom" false="" interInterChrom}
  >>>
}
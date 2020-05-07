version 1.0

task Faithpd {
  input {
    Boolean iI
    Boolean tT
    Boolean oO
  }
  command <<<
    faithpd \
      ~{true="-i" false="" iI} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO}
  >>>
}
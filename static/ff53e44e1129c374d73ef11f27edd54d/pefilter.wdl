version 1.0

task Pefilter {
  input {
    Boolean iI
    Boolean oO
    Boolean pP
    Boolean sS
    Boolean tT
    Boolean dD
  }
  command <<<
    pefilter \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-d" false="" dD}
  >>>
}
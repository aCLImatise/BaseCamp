version 1.0

task Rtk {
  input {
    Boolean iI
    Boolean oO
    Boolean dD
    Boolean rR
    Boolean wW
    Boolean tT
    Boolean nsNs
  }
  command <<<
    rtk \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW} \
      ~{true="-t" false="" tT} \
      ~{true="-ns" false="" nsNs}
  >>>
}
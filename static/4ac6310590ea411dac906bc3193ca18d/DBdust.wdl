version 1.0

task DBdust {
  input {
    Boolean wW
    Boolean tT
    Boolean mM
    Boolean bB
  }
  command <<<
    DBdust \
      ~{true="-w" false="" wW} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-b" false="" bB}
  >>>
}
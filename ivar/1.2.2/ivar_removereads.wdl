version 1.0

task IvarRemovereads {
  input {
    Boolean iI
    Boolean tT
    Boolean bB
    Boolean pP
  }
  command <<<
    ivar removereads \
      ~{true="-i" false="" iI} \
      ~{true="-t" false="" tT} \
      ~{true="-b" false="" bB} \
      ~{true="-p" false="" pP}
  >>>
}
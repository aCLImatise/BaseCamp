version 1.0

task IvarGetmasked {
  input {
    Boolean iI
    Boolean bB
    Boolean fF
    Boolean pP
  }
  command <<<
    ivar getmasked \
      ~{true="-i" false="" iI} \
      ~{true="-b" false="" bB} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP}
  >>>
}
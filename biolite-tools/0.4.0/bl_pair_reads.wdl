version 1.0

task BlPairReads {
  input {
    Boolean iI
    Boolean oO
    Boolean sS
  }
  command <<<
    bl-pair-reads \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS}
  >>>
}
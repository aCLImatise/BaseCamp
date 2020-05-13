version 1.0

task Extractmessages {
  input {
    Boolean iI
    Boolean xX
    Boolean mM
    Boolean oO
  }
  command <<<
    extractmessages \
      ~{true="-i" false="" iI} \
      ~{true="-x" false="" xX} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO}
  >>>
}
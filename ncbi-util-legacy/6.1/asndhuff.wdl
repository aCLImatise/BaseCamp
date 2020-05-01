version 1.0

task Asndhuff {
  input {
    Boolean iI
    Boolean oO
  }
  command <<<
    asndhuff \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO}
  >>>
}
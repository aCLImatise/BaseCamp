version 1.0

task BlExclude {
  input {
    Boolean xX
    Boolean kK
    Boolean iI
    Boolean oO
  }
  command <<<
    bl-exclude \
      ~{true="-x" false="" xX} \
      ~{true="-k" false="" kK} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO}
  >>>
}
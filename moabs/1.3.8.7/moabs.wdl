version 1.0

task Moabs {
  input {
    Boolean iI
    Boolean cfCf
    Boolean defDef
    Boolean vV
  }
  command <<<
    moabs \
      ~{true="-i" false="" iI} \
      ~{true="--cf" false="" cfCf} \
      ~{true="--def" false="" defDef} \
      ~{true="-v" false="" vV}
  >>>
}
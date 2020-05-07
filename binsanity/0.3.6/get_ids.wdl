version 1.0

task GetIds {
  input {
    Boolean fF
    Boolean oO
    Boolean lL
    Boolean xX
  }
  command <<<
    get-ids \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-l" false="" lL} \
      ~{true="-x" false="" xX}
  >>>
}
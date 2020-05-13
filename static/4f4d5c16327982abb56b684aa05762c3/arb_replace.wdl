version 1.0

task ArbReplace {
  input {
    Boolean lL
    Boolean lL
    Boolean pP
  }
  command <<<
    arb_replace \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-p" false="" pP}
  >>>
}
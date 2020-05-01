version 1.0

task Indexer {
  input {
    Boolean sS
    Boolean tT
    Boolean iI
    Boolean pP
    Boolean mM
    Boolean lL
    Boolean lpLp
    Boolean llLl
  }
  command <<<
    indexer \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-i" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-lp" false="" lpLp} \
      ~{true="-ll" false="" llLl}
  >>>
}
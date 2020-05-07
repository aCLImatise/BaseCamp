version 1.0

task RgtTDFAutobinding {
  input {
    Boolean iI
    Boolean lL
    Boolean eE
    Boolean aboAbo
  }
  command <<<
    rgt-TDF autobinding \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{true="-abo" false="" aboAbo}
  >>>
}
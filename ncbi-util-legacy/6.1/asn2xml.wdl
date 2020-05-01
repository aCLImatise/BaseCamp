version 1.0

task Asn2xml {
  input {
    Boolean lL
  }
  command <<<
    asn2xml \
      ~{true="-l" false="" lL}
  >>>
}
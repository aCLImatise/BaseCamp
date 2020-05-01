version 1.0

task Asn2gb {
  input {
    Boolean aA
  }
  command <<<
    asn2gb \
      ~{true="-a" false="" aA}
  >>>
}
version 1.0

task Debruijn {
  input {
    Boolean nN
    Boolean aA
  }
  command <<<
    debruijn \
      ~{true="-n" false="" nN} \
      ~{true="-a" false="" aA}
  >>>
}
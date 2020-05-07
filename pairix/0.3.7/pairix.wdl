version 1.0

task Pairix {
  input {
    Boolean hH
    Boolean bB
    Boolean wW
    Boolean yY
    Boolean lL
    Boolean nN
    Boolean fF
    Boolean aA
  }
  command <<<
    pairix \
      ~{true="-H" false="" hH} \
      ~{true="-B" false="" bB} \
      ~{true="-W" false="" wW} \
      ~{true="-Y" false="" yY} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA}
  >>>
}
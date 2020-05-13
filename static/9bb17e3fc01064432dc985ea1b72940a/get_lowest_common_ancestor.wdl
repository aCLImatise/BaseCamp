version 1.0

task GetLowestCommonAncestor.pl {
  input {
    Boolean fF
    Boolean aA
    Boolean bB
  }
  command <<<
    get_lowest_common_ancestor.pl \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB}
  >>>
}
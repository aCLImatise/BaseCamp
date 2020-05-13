version 1.0

task Squid {
  input {
    Boolean gG
    Boolean coCo
    Boolean toTo
    Boolean rgRg
  }
  command <<<
    squid \
      ~{true="-G" false="" gG} \
      ~{true="-CO" false="" coCo} \
      ~{true="-TO" false="" toTo} \
      ~{true="-RG" false="" rgRg}
  >>>
}
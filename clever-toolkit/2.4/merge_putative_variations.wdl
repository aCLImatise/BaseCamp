version 1.0

task MergePutativeVariations {
  input {
    Boolean mM
    Boolean lL
    Boolean wW
    Boolean fF
    Boolean aA
    Boolean iI
  }
  command <<<
    merge-putative-variations \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-w" false="" wW} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-I" false="" iI}
  >>>
}
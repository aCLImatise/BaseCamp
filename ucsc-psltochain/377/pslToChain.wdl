version 1.0

task PslToChain {
  input {
    Boolean ignoreIgnore
    String? pslPslIn
    String? chainChainOut
  }
  command <<<
    pslToChain \
      ~{pslPslIn} \
      ~{true="-ignore" false="" ignoreIgnore} \
      ~{chainChainOut}
  >>>
}
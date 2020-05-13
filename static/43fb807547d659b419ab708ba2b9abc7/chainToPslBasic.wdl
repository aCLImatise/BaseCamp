version 1.0

task ChainToPslBasic {
  input {
    String? chainChainTopSl
    String? inInChain
    String? outOutPsl
  }
  command <<<
    chainToPslBasic \
      ~{chainChainTopSl} \
      ~{inInChain} \
      ~{outOutPsl}
  >>>
}
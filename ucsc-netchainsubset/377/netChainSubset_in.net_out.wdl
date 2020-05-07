version 1.0

task NetChainSubsetIn.netOut.chain {
  input {
    String? inInChain
    String? outOutChain
  }
  command <<<
    netChainSubset in.net out.chain \
      ~{inInChain} \
      ~{outOutChain}
  >>>
}
version 1.0

task NetChainSubsetIn.chain {
  input {
    String? inInNet
    String? inInChain
    String? outOutChain
  }
  command <<<
    netChainSubset in.chain \
      ~{inInNet} \
      ~{inInChain} \
      ~{outOutChain}
  >>>
}
version 1.0

task NetChainSubsetOut.chain {
  input {
    String? inInNet
    String? inInChain
    String? outOutChain
  }
  command <<<
    netChainSubset out.chain \
      ~{inInNet} \
      ~{inInChain} \
      ~{outOutChain}
  >>>
}
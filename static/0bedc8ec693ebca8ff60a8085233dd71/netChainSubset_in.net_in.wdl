version 1.0

task NetChainSubsetIn.netIn.chain {
  input {
    String? outOutChain
  }
  command <<<
    netChainSubset in.net in.chain \
      ~{outOutChain}
  >>>
}
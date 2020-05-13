version 1.0

task ChainSwapIn.chain {
  input {
    String? outOutChain
  }
  command <<<
    chainSwap in.chain \
      ~{outOutChain}
  >>>
}
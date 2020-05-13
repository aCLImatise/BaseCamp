version 1.0

task ChainSwapOut.chain {
  input {
    String? inInChain
    String? outOutChain
  }
  command <<<
    chainSwap out.chain \
      ~{inInChain} \
      ~{outOutChain}
  >>>
}
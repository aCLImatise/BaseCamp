version 1.0

task ChainPreNetOut.chain {
  input {
    String? inInChain
    String? targetTargetSizes
    String? queryQuerySizes
    String? outOutChain
  }
  command <<<
    chainPreNet out.chain \
      ~{inInChain} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{outOutChain}
  >>>
}
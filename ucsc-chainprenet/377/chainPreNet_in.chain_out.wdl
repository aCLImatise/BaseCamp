version 1.0

task ChainPreNetIn.chainOut.chain {
  input {
    String? targetTargetSizes
    String? queryQuerySizes
    String? outOutChain
  }
  command <<<
    chainPreNet in.chain out.chain \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{outOutChain}
  >>>
}
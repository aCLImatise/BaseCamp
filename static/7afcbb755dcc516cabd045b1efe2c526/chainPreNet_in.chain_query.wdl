version 1.0

task ChainPreNetIn.chainQuery.sizes {
  input {
    String? targetTargetSizes
    String? queryQuerySizes
    String? outOutChain
  }
  command <<<
    chainPreNet in.chain query.sizes \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{outOutChain}
  >>>
}
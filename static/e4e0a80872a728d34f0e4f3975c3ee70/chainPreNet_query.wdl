version 1.0

task ChainPreNetQuery.sizes {
  input {
    String? inInChain
    String? targetTargetSizes
    String? queryQuerySizes
    String? outOutChain
  }
  command <<<
    chainPreNet query.sizes \
      ~{inInChain} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{outOutChain}
  >>>
}
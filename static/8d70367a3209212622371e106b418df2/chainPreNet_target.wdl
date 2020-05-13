version 1.0

task ChainPreNetTarget.sizes {
  input {
    String? inInChain
    String? targetTargetSizes
    String? queryQuerySizes
    String? outOutChain
  }
  command <<<
    chainPreNet target.sizes \
      ~{inInChain} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{outOutChain}
  >>>
}
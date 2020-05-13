version 1.0

task ChainPreNetIn.chainTarget.sizesQuery.sizes {
  input {
    String? outOutChain
  }
  command <<<
    chainPreNet in.chain target.sizes query.sizes \
      ~{outOutChain}
  >>>
}
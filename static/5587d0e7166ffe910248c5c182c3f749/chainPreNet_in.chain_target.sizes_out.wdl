version 1.0

task ChainPreNetIn.chainTarget.sizesOut.chain {
  input {
    String? queryQuerySizes
    String? outOutChain
  }
  command <<<
    chainPreNet in.chain target.sizes out.chain \
      ~{queryQuerySizes} \
      ~{outOutChain}
  >>>
}
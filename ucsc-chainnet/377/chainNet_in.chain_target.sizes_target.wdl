version 1.0

task ChainNetIn.chainTarget.sizesTarget.net {
  input {
    String? queryQuerySizes
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet in.chain target.sizes target.net \
      ~{queryQuerySizes} \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
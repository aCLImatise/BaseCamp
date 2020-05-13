version 1.0

task ChainNetIn.chainTarget.sizesQuery.net {
  input {
    String? queryQuerySizes
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet in.chain target.sizes query.net \
      ~{queryQuerySizes} \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
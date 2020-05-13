version 1.0

task ChainNetIn.chainTarget.sizesQuery.sizesQuery.net {
  input {
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet in.chain target.sizes query.sizes query.net \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
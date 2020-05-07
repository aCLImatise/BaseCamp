version 1.0

task ChainNetIn.chainQuery.net {
  input {
    String? targetTargetSizes
    String? queryQuerySizes
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet in.chain query.net \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
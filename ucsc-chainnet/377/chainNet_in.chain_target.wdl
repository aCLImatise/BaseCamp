version 1.0

task ChainNetIn.chainTarget.net {
  input {
    String? targetTargetSizes
    String? queryQuerySizes
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet in.chain target.net \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
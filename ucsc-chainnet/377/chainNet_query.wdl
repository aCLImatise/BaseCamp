version 1.0

task ChainNetQuery.net {
  input {
    String? inInChain
    String? targetTargetSizes
    String? queryQuerySizes
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet query.net \
      ~{inInChain} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
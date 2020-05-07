version 1.0

task ChainNetTarget.net {
  input {
    String? inInChain
    String? targetTargetSizes
    String? queryQuerySizes
    String? targetTargetNet
    String? queryQueryNet
  }
  command <<<
    chainNet target.net \
      ~{inInChain} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{targetTargetNet} \
      ~{queryQueryNet}
  >>>
}
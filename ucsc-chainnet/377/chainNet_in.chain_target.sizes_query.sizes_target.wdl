version 1.0

task ChainNetIn.chainTarget.sizesQuery.sizesTarget.net {
  input {
    String? queryQueryNet
  }
  command <<<
    chainNet in.chain target.sizes query.sizes target.net \
      ~{queryQueryNet}
  >>>
}
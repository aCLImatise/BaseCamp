version 1.0

task AxtSwapQuery.sizes {
  input {
    String? sourceSourceAxt
    String? targetTargetSizes
    String? queryQuerySizes
    String? desDesTaxT
  }
  command <<<
    axtSwap query.sizes \
      ~{sourceSourceAxt} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{desDesTaxT}
  >>>
}
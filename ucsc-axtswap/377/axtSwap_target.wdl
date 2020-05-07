version 1.0

task AxtSwapTarget.sizes {
  input {
    String? sourceSourceAxt
    String? targetTargetSizes
    String? queryQuerySizes
    String? desDesTaxT
  }
  command <<<
    axtSwap target.sizes \
      ~{sourceSourceAxt} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{desDesTaxT}
  >>>
}
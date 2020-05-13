version 1.0

task AxtSwapSource.axtQuery.sizes {
  input {
    String? targetTargetSizes
    String? queryQuerySizes
    String? desDesTaxT
  }
  command <<<
    axtSwap source.axt query.sizes \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{desDesTaxT}
  >>>
}
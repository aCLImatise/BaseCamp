version 1.0

task AxtSwapSource.axtTarget.sizesDest.axt {
  input {
    String? queryQuerySizes
    String? desDesTaxT
  }
  command <<<
    axtSwap source.axt target.sizes dest.axt \
      ~{queryQuerySizes} \
      ~{desDesTaxT}
  >>>
}
version 1.0

task AxtSwapSource.axtDest.axt {
  input {
    String? targetTargetSizes
    String? queryQuerySizes
    String? desDesTaxT
  }
  command <<<
    axtSwap source.axt dest.axt \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{desDesTaxT}
  >>>
}
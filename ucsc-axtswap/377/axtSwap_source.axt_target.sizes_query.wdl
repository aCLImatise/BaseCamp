version 1.0

task AxtSwapSource.axtTarget.sizesQuery.sizes {
  input {
    String? desDesTaxT
  }
  command <<<
    axtSwap source.axt target.sizes query.sizes \
      ~{desDesTaxT}
  >>>
}
version 1.0

task PanarooSpydrpick {
  input {
    String quantileQuantile
    String inputInput
    String outOutDir
    String treeTree
    String clustersClusters
  }
  command <<<
    panaroo-spydrpick \
      ~{if defined(quantileQuantile) then ("--quantile " +  '"' + quantileQuantile + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""}
  >>>
}
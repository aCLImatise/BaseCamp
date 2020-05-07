version 1.0

task Taxtree.sh {
  input {
    String xmx20gXmx20g
    String? namesNamesDmp
    String? nodesNodesDmp
    String? mergedMergedDmp
    String? treeTreeTaxTreeGz
  }
  command <<<
    taxtree.sh \
      ~{namesNamesDmp} \
      ~{if defined(xmx20gXmx20g) then ("-Xmx20g " +  '"' + xmx20gXmx20g + '"') else ""} \
      ~{nodesNodesDmp} \
      ~{mergedMergedDmp} \
      ~{treeTreeTaxTreeGz}
  >>>
}
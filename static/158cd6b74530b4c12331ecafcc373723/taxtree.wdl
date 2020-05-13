version 1.0

task Taxtree.py {
  input {
    String gbGbDir
    String namesNames
    String nodesNodes
    String mergedMerged
  }
  command <<<
    taxtree.py \
      ~{if defined(gbGbDir) then ("--gbdir " +  '"' + gbGbDir + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""} \
      ~{if defined(mergedMerged) then ("--merged " +  '"' + mergedMerged + '"') else ""}
  >>>
}
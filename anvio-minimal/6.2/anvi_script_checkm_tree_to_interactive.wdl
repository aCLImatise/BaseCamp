version 1.0

task AnviScriptCheckmTreeToInteractive {
  input {
    String tT
    Directory oO
    String? treeTree
  }
  command <<<
    anvi-script-checkm-tree-to-interactive \
      ~{treeTree} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}
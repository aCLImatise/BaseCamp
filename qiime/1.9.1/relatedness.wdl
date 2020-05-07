version 1.0

task Relatedness.py {
  input {
    String treeTreeFp
    String taxTaxAFp
  }
  command <<<
    relatedness.py \
      ~{if defined(treeTreeFp) then ("--tree_fp " +  '"' + treeTreeFp + '"') else ""} \
      ~{if defined(taxTaxAFp) then ("--taxa_fp " +  '"' + taxTaxAFp + '"') else ""}
  >>>
}
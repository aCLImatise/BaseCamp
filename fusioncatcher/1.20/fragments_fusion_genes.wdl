version 1.0

task FragmentsFusionGenes.py {
  input {
    String fusionFusionReads
    Int minimumMinimum
    String fragmentsFragments
  }
  command <<<
    fragments_fusion_genes.py \
      ~{if defined(fusionFusionReads) then ("--fusion-reads " +  '"' + fusionFusionReads + '"') else ""} \
      ~{if defined(minimumMinimum) then ("--minimum " +  '"' + minimumMinimum + '"') else ""} \
      ~{if defined(fragmentsFragments) then ("--fragments " +  '"' + fragmentsFragments + '"') else ""}
  >>>
}
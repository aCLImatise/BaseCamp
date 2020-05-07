version 1.0

task PhylorankRankRes {
  input {
    String taxTaxAFile
    String? inputInputTree
    String? taxonomyTaxonomyFile
    String? outputOutputFile
  }
  command <<<
    phylorank rank_res \
      ~{inputInputTree} \
      ~{if defined(taxTaxAFile) then ("--taxa_file " +  '"' + taxTaxAFile + '"') else ""} \
      ~{taxonomyTaxonomyFile} \
      ~{outputOutputFile}
  >>>
}
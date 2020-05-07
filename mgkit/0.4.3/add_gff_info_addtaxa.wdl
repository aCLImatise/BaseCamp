version 1.0

task AddGffInfoAddtaxa {
  input {
    String geneGeneTaxOnTable
    String geneGeneAttr
    String hdfHdfTable
    String taxonomyTaxonomy
    String dictionaryDictionary
    Boolean skipSkipNoTaxOn
    String taxTaxOnDb
    Boolean cacheCacheTable
    Boolean progressProgress
  }
  command <<<
    add-gff-info addtaxa \
      ~{if defined(geneGeneTaxOnTable) then ("--gene-taxon-table " +  '"' + geneGeneTaxOnTable + '"') else ""} \
      ~{if defined(geneGeneAttr) then ("--gene-attr " +  '"' + geneGeneAttr + '"') else ""} \
      ~{if defined(hdfHdfTable) then ("--hdf-table " +  '"' + hdfHdfTable + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(dictionaryDictionary) then ("--dictionary " +  '"' + dictionaryDictionary + '"') else ""} \
      ~{true="--skip-no-taxon" false="" skipSkipNoTaxOn} \
      ~{if defined(taxTaxOnDb) then ("--taxon-db " +  '"' + taxTaxOnDb + '"') else ""} \
      ~{true="--cache-table" false="" cacheCacheTable} \
      ~{true="--progress" false="" progressProgress}
  >>>
}
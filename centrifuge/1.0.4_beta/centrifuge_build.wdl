version 1.0

task CentrifugeBuild {
  input {
    Boolean oO
    Boolean tT
    File conversionConversionTable
    Boolean taxonomyTaxonomyTree
    Boolean nameNameTable
    Boolean sizeSizeTable
    Int seedSeed
    Boolean qQ
    Boolean pP
    Int kmKmErCount
    String? referenceReferenceIn
    String? centrifugeCentrifugeIndexBase
  }
  command <<<
    centrifuge-build \
      ~{referenceReferenceIn} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(conversionConversionTable) then ("--conversion-table " +  '"' + conversionConversionTable + '"') else ""} \
      ~{true="--taxonomy-tree" false="" taxonomyTaxonomyTree} \
      ~{true="--name-table" false="" nameNameTable} \
      ~{true="--size-table" false="" sizeSizeTable} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{true="-p" false="" pP} \
      ~{if defined(kmKmErCount) then ("--kmer-count " +  '"' + kmKmErCount + '"') else ""} \
      ~{centrifugeCentrifugeIndexBase}
  >>>
}
version 1.0

task TaxonUtilsLca {
  input {
    String taxonomyTaxonomy
    File noNoLca
    Boolean onlyOnlyRanked
    Float bitBitScore
    Boolean renameRename
    Boolean sortedSorted
    String featFeatType
    File referenceReference
    Boolean simpleSimpleTable
    Int kronaKronaTotal
    Boolean outOutFormat
    Boolean progressProgress
  }
  command <<<
    taxon-utils lca \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(noNoLca) then ("--no-lca " +  '"' + noNoLca + '"') else ""} \
      ~{true="--only-ranked" false="" onlyOnlyRanked} \
      ~{if defined(bitBitScore) then ("--bitscore " +  '"' + bitBitScore + '"') else ""} \
      ~{true="--rename" false="" renameRename} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(featFeatType) then ("--feat-type " +  '"' + featFeatType + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--simple-table" false="" simpleSimpleTable} \
      ~{if defined(kronaKronaTotal) then ("--krona-total " +  '"' + kronaKronaTotal + '"') else ""} \
      ~{true="--out-format" false="" outOutFormat} \
      ~{true="--progress" false="" progressProgress}
  >>>
}
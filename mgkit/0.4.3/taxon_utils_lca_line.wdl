version 1.0

task TaxonUtilsLcaLine {
  input {
    String taxonomyTaxonomy
    File noNoLca
    Boolean onlyOnlyRanked
    String separatorSeparator
  }
  command <<<
    taxon-utils lca_line \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(noNoLca) then ("--no-lca " +  '"' + noNoLca + '"') else ""} \
      ~{true="--only-ranked" false="" onlyOnlyRanked} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""}
  >>>
}
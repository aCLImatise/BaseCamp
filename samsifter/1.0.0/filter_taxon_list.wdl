version 1.0

task FilterTaxonList {
  input {
    String iI
    String lL
    String discardDiscard
  }
  command <<<
    filter_taxon_list \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""}
  >>>
}
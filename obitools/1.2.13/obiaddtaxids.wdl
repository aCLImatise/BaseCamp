version 1.0

task Obiaddtaxids {
  input {
    String ifIf
    String otherwiseOtherwise
    File databaseDatabase
    File taxonomyTaxonomyDump
  }
  command <<<
    obiaddtaxids \
      ~{if defined(ifIf) then ("- If " +  '"' + ifIf + '"') else ""} \
      ~{if defined(otherwiseOtherwise) then ("- Otherwise " +  '"' + otherwiseOtherwise + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDump) then ("--taxonomy-dump " +  '"' + taxonomyTaxonomyDump + '"') else ""}
  >>>
}
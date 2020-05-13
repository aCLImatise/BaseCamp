version 1.0

task Obitaxonomy {
  input {
    File databaseDatabase
    File taxonomyTaxonomyDump
  }
  command <<<
    obitaxonomy \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDump) then ("--taxonomy-dump " +  '"' + taxonomyTaxonomyDump + '"') else ""}
  >>>
}
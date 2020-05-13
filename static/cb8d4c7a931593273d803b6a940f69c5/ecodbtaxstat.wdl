version 1.0

task Ecodbtaxstat {
  input {
    String rankRank
    File databaseDatabase
    File taxonomyTaxonomyDump
    String requireRequireRank
    String requiredRequired
    String ignoreIgnore
  }
  command <<<
    ecodbtaxstat \
      ~{if defined(rankRank) then ("--rank " +  '"' + rankRank + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDump) then ("--taxonomy-dump " +  '"' + taxonomyTaxonomyDump + '"') else ""} \
      ~{if defined(requireRequireRank) then ("--require-rank " +  '"' + requireRequireRank + '"') else ""} \
      ~{if defined(requiredRequired) then ("--required " +  '"' + requiredRequired + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""}
  >>>
}
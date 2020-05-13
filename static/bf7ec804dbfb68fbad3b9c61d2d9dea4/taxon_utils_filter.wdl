version 1.0

task TaxonUtilsFilter {
  input {
    String taxonomyTaxonomy
    Int includeIncludeTaxOnId
    String includeIncludeTaxOnName
    Int excludeExcludeTaxOnId
    String excludeExcludeTaxOnName
    Boolean progressProgress
  }
  command <<<
    taxon-utils filter \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(includeIncludeTaxOnId) then ("--include-taxon-id " +  '"' + includeIncludeTaxOnId + '"') else ""} \
      ~{if defined(includeIncludeTaxOnName) then ("--include-taxon-name " +  '"' + includeIncludeTaxOnName + '"') else ""} \
      ~{if defined(excludeExcludeTaxOnId) then ("--exclude-taxon-id " +  '"' + excludeExcludeTaxOnId + '"') else ""} \
      ~{if defined(excludeExcludeTaxOnName) then ("--exclude-taxon-name " +  '"' + excludeExcludeTaxOnName + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}
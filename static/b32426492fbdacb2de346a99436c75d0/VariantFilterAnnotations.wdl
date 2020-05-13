version 1.0

task VariantFilterAnnotations {
  input {
    File inIn
    File outOut
    File filtersFilters
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VariantFilterAnnotations \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(filtersFilters) then ("-filters " +  '"' + filtersFilters + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}
version 1.0

task Humann2SplitTable {
  input {
    Boolean verboseVerbose
    String inputInput
    String outputOutput
    String taxonomyTaxonomyIndex
    String taxonomyTaxonomyLevel
  }
  command <<<
    humann2_split_table \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(taxonomyTaxonomyIndex) then ("--taxonomy_index " +  '"' + taxonomyTaxonomyIndex + '"') else ""} \
      ~{if defined(taxonomyTaxonomyLevel) then ("--taxonomy_level " +  '"' + taxonomyTaxonomyLevel + '"') else ""}
  >>>
}
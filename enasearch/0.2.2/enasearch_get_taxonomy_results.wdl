version 1.0

task EnasearchGetTaxonomyResults {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_taxonomy_results \
      ~{optionsOptions}
  >>>
}
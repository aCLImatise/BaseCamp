version 1.0

task TripailleOrganismGetTaxonomicRanks {
  input {
    String? optionsOptions
  }
  command <<<
    tripaille organism get_taxonomic_ranks \
      ~{optionsOptions}
  >>>
}
version 1.0

task Augustus {
  input {
    String? species
    String partial
    Int intron_less
    String complete
    String at_least_one
    String exactly_one
  }
  command <<<
    augustus \
      ~{partial} \
      ~{intron_less} \
      ~{complete} \
      ~{at_least_one} \
      ~{exactly_one} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    species: ""
    partial: ": allow prediction of incomplete genes at the sequence boundaries (default)"
    intron_less: ": only predict single-exon genes like in prokaryotes and some eukaryotes"
    complete: ": only predict complete genes"
    at_least_one: ": predict at least one complete gene"
    exactly_one: ": predict exactly one complete gene"
  }
}
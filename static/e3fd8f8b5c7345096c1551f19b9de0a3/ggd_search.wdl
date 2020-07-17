version 1.0

task GgdSearch {
  input {
    String? genome_build
    String? species
    String? display_number
    String? match_score
    String? channel
    String search_term
  }
  command <<<
    ggd search \
      ~{search_term} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(display_number) then ("--display-number " +  '"' + display_number + '"') else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""}
  >>>
  parameter_meta {
    genome_build: "(Optional) Filter results by the genome build of the desired recipe"
    species: "(Optional) Filter results by the species for the desired recipe"
    display_number: "(Optional) The number of search results to display. (Default = 5)"
    match_score: "(Optional) A score between 0 and 100 to use to filter the results by. (Default = 75). The lower the number the more results will be output"
    channel: "(Optional) The ggd channel to search. (Default = genomics)"
    search_term: "**Required** The term(s) to search for. Multiple terms can be used. Example: 'ggd search reference genome'"
  }
}
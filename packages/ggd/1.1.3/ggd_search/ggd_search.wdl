version 1.0

task GgdSearch {
  input {
    String? search_type
    String? genome_build
    String? species
    Int? display_number
    Int? match_score
    String? channel
    String search_term
  }
  command <<<
    ggd search \
      ~{search_term} \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(display_number) then ("--display-number " +  '"' + display_number + '"') else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0"
  }
  parameter_meta {
    search_type: "(Optional) How to search for data packages with the\\nsearch terms provided. Options = 'combined-only',\\n'non-combined-only', and 'both'. 'combined-only' will\\nuse the provided search terms as a single search term.\\n'non-combined-only' will use the provided search term\\nto search for data package that match each search term\\nseparately. 'both' will use the search terms combined\\nand each search term separately to search for data\\npackages. Default = 'both'"
    genome_build: "(Optional) Filter results by the genome build of the\\ndesired recipe"
    species: "(Optional) Filter results by the species for the\\ndesired recipe"
    display_number: "(Optional) The number of search results to display.\\n(Default = 5)"
    match_score: "(Optional) A score between 0 and 100 to use to filter\\nthe results by. (Default = 90). The lower the number\\nthe more results will be output"
    channel: "(Optional) The ggd channel to search. (Default =\\ngenomics)\\n"
    search_term: "**Required** The term(s) to search for. Multiple terms\\ncan be used. Example: 'ggd search reference genome'"
  }
  output {
    File out_stdout = stdout()
  }
}
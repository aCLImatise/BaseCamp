version 1.0

task GgdSearch {
  input {
    String? genome_build
    String? species
    Int? display_number
    Int? match_score
    String? channel
  }
  command <<<
    ggd search \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(display_number) then ("--display-number " +  '"' + display_number + '"') else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""}
  >>>
  parameter_meta {
    genome_build: "(Optional) Filter results by the genome build of the\\ndesired recipe"
    species: "(Optional) Filter results by the species for the\\ndesired recipe"
    display_number: "(Optional) The number of search results to display.\\n(Default = 5)"
    match_score: "(Optional) A score between 0 and 100 to use to filter\\nthe results by. (Default = 75). The lower the number\\nthe more results will be output"
    channel: "(Optional) The ggd channel to search. (Default =\\ngenomics)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
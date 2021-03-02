version 1.0

task TripailleOrganismAddOrganism {
  input {
    String? common
    String? abbr
    String? comment
    String? infraspecific_rank
    String? infraspecific_name
    String genus
    String species
  }
  command <<<
    tripaille organism add_organism \
      ~{genus} \
      ~{species} \
      ~{if defined(common) then ("--common " +  '"' + common + '"') else ""} \
      ~{if defined(abbr) then ("--abbr " +  '"' + abbr + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if defined(infraspecific_rank) then ("--infraspecific_rank " +  '"' + infraspecific_rank + '"') else ""} \
      ~{if defined(infraspecific_name) then ("--infraspecific_name " +  '"' + infraspecific_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    common: "The common name of the organism"
    abbr: "The abbreviation of the organism"
    comment: "A comment / description"
    infraspecific_rank: "The type name of infraspecific name for any taxon\\nbelow the rank of species. Must be one of\\n['subspecies', 'varietas', 'subvariety', 'forma',\\n'subforma']"
    infraspecific_name: "The infraspecific name for this organism."
    genus: ""
    species: ""
  }
  output {
    File out_stdout = stdout()
  }
}
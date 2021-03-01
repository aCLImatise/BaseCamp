version 1.0

task ChakinOrganismDeleteOrganisms {
  input {
    Int? organism_id
    String? genus
    String? species
    String? common
    String? abbr
    String? comment
    String options
  }
  command <<<
    chakin organism delete_organisms \
      ~{options} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(common) then ("--common " +  '"' + common + '"') else ""} \
      ~{if defined(abbr) then ("--abbr " +  '"' + abbr + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism_id: "organism_id filter"
    genus: "genus filter"
    species: "species filter"
    common: "common filter"
    abbr: "abbr filter"
    comment: "comment filter"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}
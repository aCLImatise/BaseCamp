version 1.0

task TripailleOrganismGetOrganisms {
  input {
    String? organism_id
    String? genus
    String? species
    String? common
    String? abbr
    String? comment
  }
  command <<<
    tripaille organism get_organisms \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(common) then ("--common " +  '"' + common + '"') else ""} \
      ~{if defined(abbr) then ("--abbr " +  '"' + abbr + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""}
  >>>
  parameter_meta {
    organism_id: "An organism ID"
    genus: "The genus of the organism"
    species: "The species of the organism"
    common: "The common name of the organism"
    abbr: "The abbreviation of the organism"
    comment: "A comment / description"
  }
  output {
    File out_stdout = stdout()
  }
}
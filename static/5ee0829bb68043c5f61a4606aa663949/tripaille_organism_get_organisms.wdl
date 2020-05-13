version 1.0

task TripailleOrganismGetOrganisms {
  input {
    String organismOrganismId
    String genusGenus
    String speciesSpecies
    String commonCommon
    String abbrAbbr
    String commentComment
  }
  command <<<
    tripaille organism get_organisms \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(genusGenus) then ("--genus " +  '"' + genusGenus + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(commonCommon) then ("--common " +  '"' + commonCommon + '"') else ""} \
      ~{if defined(abbrAbbr) then ("--abbr " +  '"' + abbrAbbr + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""}
  >>>
}
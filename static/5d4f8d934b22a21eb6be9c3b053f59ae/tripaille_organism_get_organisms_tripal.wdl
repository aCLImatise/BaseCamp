version 1.0

task TripailleOrganismGetOrganismsTripal {
  input {
    Int organismOrganismId
  }
  command <<<
    tripaille organism get_organisms_tripal \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""}
  >>>
}
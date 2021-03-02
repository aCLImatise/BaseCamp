version 1.0

task TripailleOrganismGetOrganismsTripal {
  input {
    Int? organism_id
  }
  command <<<
    tripaille organism get_organisms_tripal \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism_id: "An organism entity ID"
  }
  output {
    File out_stdout = stdout()
  }
}
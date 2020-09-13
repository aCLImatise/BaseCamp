version 1.0

task SynapseGetprovenance {
  input {
    Int? id
  }
  command <<<
    synapse get_provenance \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  parameter_meta {
    id: "Synapse ID of entity whose provenance we are\\naccessing."
  }
  output {
    File out_stdout = stdout()
  }
}
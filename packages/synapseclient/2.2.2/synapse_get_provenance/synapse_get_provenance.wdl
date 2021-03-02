version 1.0

task SynapseGetprovenance {
  input {
    Int? id
  }
  command <<<
    synapse get_provenance \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    id: "Synapse ID of entity whose provenance we are\\naccessing."
  }
  output {
    File out_stdout = stdout()
  }
}
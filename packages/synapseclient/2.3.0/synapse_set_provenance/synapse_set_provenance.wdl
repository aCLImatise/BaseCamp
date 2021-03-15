version 1.0

task SynapseSetprovenance {
  input {
    Int? id
    String? name
    String? description
    Boolean? output_provenance_record
    Boolean? used
    Boolean? executed
    Directory? limit_search
  }
  command <<<
    synapse set_provenance \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if (output_provenance_record) then "-o" else ""} \
      ~{if (used) then "-used" else ""} \
      ~{if (executed) then "-executed" else ""} \
      ~{if defined(limit_search) then ("--limitSearch " +  '"' + limit_search + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0"
  }
  parameter_meta {
    id: "Synapse ID of entity whose provenance we are\\naccessing."
    name: "Name of the activity that generated the entity"
    description: "Description of the activity that generated the entity"
    output_provenance_record: "[OUTPUT_FILE], -output [OUTPUT_FILE], --output [OUTPUT_FILE]\\nOutput the provenance record in JSON format"
    used: "[target ...], --used [target ...]\\nSynapse ID, a url, or a local file path (of a file\\npreviouslyuploaded to Synapse) from which the\\nspecified entity is derived"
    executed: "[target ...], --executed [target ...]\\nSynapse ID, a url, or a local file path (of a file\\npreviouslyuploaded to Synapse) that was executed to\\ngenerate the specified entity"
    limit_search: "Synapse ID of a container such as project or folder to\\nlimit search for provenance files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
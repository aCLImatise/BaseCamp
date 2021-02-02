version 1.0

task SynapseGetprovenanceAccessing {
  input {
    Int? id
    String synapse
    String get_provenance
  }
  command <<<
    synapse get_provenance accessing_ \
      ~{synapse} \
      ~{get_provenance} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""}
  >>>
  parameter_meta {
    id: ""
    synapse: ""
    get_provenance: ""
  }
  output {
    File out_stdout = stdout()
  }
}
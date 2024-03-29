version 1.0

task SynapseGetststoken {
  input {
    String? o
    String id
  }
  command <<<
    synapse get_sts_token \
      ~{id} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    o: ""
    id: "Synapse id"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SynapseGetannotations {
  input {
    Int? id
    Boolean? o
    String? output_file
  }
  command <<<
    synapse get_annotations \
      ~{output_file} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0"
  }
  parameter_meta {
    id: "Synapse ID of entity whose annotations we are"
    o: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SynapseGetannotationsAccessing {
  input {
    Boolean? o
    Int? id
    String synapse
    String get_annotations
    String? output_file
  }
  command <<<
    synapse get_annotations accessing_ \
      ~{synapse} \
      ~{get_annotations} \
      ~{output_file} \
      ~{if (o) then "-o" else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    id: ""
    synapse: ""
    get_annotations: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
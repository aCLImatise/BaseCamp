version 1.0

task SynapseSetannotationsAccessing {
  input {
    Boolean? r
    String? annotations
    Int? id
    String synapse
    String set_annotations
  }
  command <<<
    synapse set_annotations accessing_ \
      ~{synapse} \
      ~{set_annotations} \
      ~{if (r) then "-r" else ""} \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0"
  }
  parameter_meta {
    r: ""
    annotations: ""
    id: ""
    synapse: ""
    set_annotations: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SynapseSetannotations {
  input {
    Int? id
    Boolean? replace
    String? annotations
  }
  command <<<
    synapse set_annotations \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""}
  >>>
  parameter_meta {
    id: "Synapse ID of entity whose annotations we are"
    replace: "Replace all existing annotations with the given\\nannotations\\n"
    annotations: ""
  }
  output {
    File out_stdout = stdout()
  }
}
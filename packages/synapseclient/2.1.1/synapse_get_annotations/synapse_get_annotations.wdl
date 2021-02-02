version 1.0

task SynapseGetannotations {
  input {
    Int? id
    Boolean? o
  }
  command <<<
    synapse get_annotations \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  parameter_meta {
    id: "Synapse ID of entity whose annotations we are"
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}
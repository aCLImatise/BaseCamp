version 1.0

task ParsecHistoriesUpdateDatasetCollection {
  input {
    Boolean? deleted
    String? name
    Boolean? visible
    String dataset_collection_id
  }
  command <<<
    parsec histories update_dataset_collection \
      ~{dataset_collection_id} \
      ~{if (deleted) then "--deleted" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (visible) then "--visible" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    deleted: "Mark or unmark history dataset collection as deleted"
    name: "Replace history dataset collection name with the given string"
    visible: "Mark or unmark history dataset collection as visible"
    dataset_collection_id: "Update history dataset collection metadata. Some of the attributes that"
  }
  output {
    File out_stdout = stdout()
  }
}
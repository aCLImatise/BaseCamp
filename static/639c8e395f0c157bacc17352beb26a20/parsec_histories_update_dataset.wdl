version 1.0

task ParsecHistoriesUpdateDataset {
  input {
    String? annotation
    String? datatype
    Boolean? deleted
    String? genome_build
    String? name
    Boolean? visible
    String history_id
    String dataset_id
  }
  command <<<
    parsec histories update_dataset \
      ~{history_id} \
      ~{dataset_id} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if (deleted) then "--deleted" else ""} \
      ~{if defined(genome_build) then ("--genome_build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (visible) then "--visible" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    annotation: "Replace history dataset annotation with given string"
    datatype: "Replace the datatype of the history dataset with the\\ngiven string. The string must be a valid Galaxy\\ndatatype, both the current and the target datatypes\\nmust allow datatype changes, and the dataset must not\\nbe in use as input or output of a running job\\n(including uploads), otherwise an error will be raised."
    deleted: "Mark or unmark history dataset as deleted"
    genome_build: "Replace history dataset genome build (dbkey)"
    name: "Replace history dataset name with the given string"
    visible: "Mark or unmark history dataset as visible"
    history_id: ""
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ParsecHistoriesCopyDataset {
  input {
    String? source
    String history_id
    String dataset_id
  }
  command <<<
    parsec histories copy_dataset \
      ~{history_id} \
      ~{dataset_id} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    source: "Source of the dataset to be copied: 'hda' (the default),\\n'library' or 'library_folder'  [default: hda]"
    history_id: ""
    dataset_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}
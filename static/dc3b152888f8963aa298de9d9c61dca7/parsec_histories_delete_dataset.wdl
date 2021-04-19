version 1.0

task ParsecHistoriesDeleteDataset {
  input {
    Boolean? purge
    String note_have_set
  }
  command <<<
    parsec histories delete_dataset \
      ~{note_have_set} \
      ~{if (purge) then "--purge" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    purge: "if ``True``, also purge (permanently delete) the dataset"
    note_have_set: ".. note::             For the purge option to work, the Galaxy\\ninstance must have the             ``allow_user_dataset_purge``\\noption set to ``true`` in the             ``config/galaxy.yml``\\nconfiguration file."
  }
  output {
    File out_stdout = stdout()
  }
}
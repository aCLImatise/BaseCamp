version 1.0

task ParsecHistoriesShowMatchingDatasets {
  input {
    String? name_filter
    String history_id
  }
  command <<<
    parsec histories show_matching_datasets \
      ~{history_id} \
      ~{if defined(name_filter) then ("--name_filter " +  '"' + name_filter + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    name_filter: "Only datasets whose name matches the ``name_filter``\\nregular expression will be returned; use plain strings\\nfor exact matches and None to match all datasets in the\\nhistory"
    history_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ParsecHistoriesCopyContent {
  input {
    Directory? source
    String history_id
    String content_id
  }
  command <<<
    parsec histories copy_content \
      ~{history_id} \
      ~{content_id} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    source: "Source of the content to be copied: 'hda' (for a history\\ndataset, the default), 'hdca' (for a dataset collection),\\n'library' (for a library dataset) or 'library_folder' (for\\nall datasets in a library folder).  [default: hda]"
    history_id: ""
    content_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}
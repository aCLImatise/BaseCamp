version 1.0

task AddTagsToAdapterspy {
  command <<<
    add_tags_to_adapters_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
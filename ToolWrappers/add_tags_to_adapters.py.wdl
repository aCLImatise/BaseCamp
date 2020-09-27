version 1.0

task AddTagsToAdapterspy {
  command <<<
    add_tags_to_adapters_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
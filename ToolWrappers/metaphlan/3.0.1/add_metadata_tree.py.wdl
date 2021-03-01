version 1.0

task AddMetadataTreepy {
  input {
    Array[String] string_to_remove
    Array[String] metadata_s
  }
  command <<<
    add_metadata_tree_py \
      ~{if defined(string_to_remove) then ("--string_to_remove " +  '"' + string_to_remove + '"') else ""} \
      ~{if defined(metadata_s) then ("--metadatas " +  '"' + metadata_s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_to_remove: "string to be removed in the tree node names"
    metadata_s: "The metadata fields that you want to add. Default: add\\nall metadata from the first line.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
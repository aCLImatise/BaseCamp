version 1.0

task AddMetadataTreepy {
  input {
    Array[String] ifn_trees
    Array[String] ifn_metadata_s
    String? string_to_remove
    Array[String] metadata_s
  }
  command <<<
    add_metadata_tree_py \
      ~{if defined(ifn_trees) then ("--ifn_trees " +  '"' + ifn_trees + '"') else ""} \
      ~{if defined(ifn_metadata_s) then ("--ifn_metadatas " +  '"' + ifn_metadata_s + '"') else ""} \
      ~{if defined(string_to_remove) then ("--string_to_remove " +  '"' + string_to_remove + '"') else ""} \
      ~{if defined(metadata_s) then ("--metadatas " +  '"' + metadata_s + '"') else ""}
  >>>
  parameter_meta {
    ifn_trees: ""
    ifn_metadata_s: ""
    string_to_remove: "string to be removed in the tree node names"
    metadata_s: "The metadata fields that you want to add. Default: add\\nall metadata from the first line.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task AddMetadataTree.py {
  input {
    String? string_to_remove
    Array[String] metadata_s
    Array[String] ifn_trees
  }
  command <<<
    add_metadata_tree.py \
      ~{if defined(string_to_remove) then ("--string_to_remove " +  '"' + string_to_remove + '"') else ""} \
      ~{if defined(metadata_s) then ("--metadatas " +  '"' + metadata_s + '"') else ""} \
      ~{if defined(ifn_trees) then ("--ifn_trees " +  '"' + ifn_trees + '"') else ""}
  >>>
  parameter_meta {
    string_to_remove: "string to be removed in the tree node names"
    metadata_s: "The metadata fields that you want to add. Default: add all metadata from the first line."
    ifn_trees: ""
  }
}
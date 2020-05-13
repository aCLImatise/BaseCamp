version 1.0

task AddMetadataTree.py {
  input {
    String stringStringToRemove
    Array[String]+ metadataMetadataS
  }
  command <<<
    add_metadata_tree.py \
      ~{if defined(stringStringToRemove) then ("--string_to_remove " +  '"' + stringStringToRemove + '"') else ""} \
      ~{if defined(metadataMetadataS) then ("--metadatas " +  '"' + metadataMetadataS + '"') else ""}
  >>>
}
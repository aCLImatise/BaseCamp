version 1.0

task AddMetadataTreepy {
  input {
    Array[String] ifn_metadata_s
    Array[String] ifn_trees
  }
  command <<<
    add_metadata_tree_py \
      ~{if defined(ifn_metadata_s) then ("--ifn_metadatas " +  '"' + ifn_metadata_s + '"') else ""} \
      ~{if defined(ifn_trees) then ("--ifn_trees " +  '"' + ifn_trees + '"') else ""}
  >>>
  parameter_meta {
    ifn_metadata_s: "[--string_to_remove STRING_TO_REMOVE]\\n[--metadatas METADATAS [METADATAS ...]]"
    ifn_trees: ""
  }
  output {
    File out_stdout = stdout()
  }
}
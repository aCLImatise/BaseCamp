version 1.0

task GhosttreeScaffoldHybridtreefoundationtree {
  input {
    Boolean? graft_level
    Boolean? stderr
    Boolean? exclude_id_list
    String extension_trees_otu_map
    String sequence_file
    String host_tree_output_folder
  }
  command <<<
    ghost_tree scaffold hybrid_tree_foundation_tree \
      ~{extension_trees_otu_map} \
      ~{sequence_file} \
      ~{host_tree_output_folder} \
      ~{if (graft_level) then "--graft-level" else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if (exclude_id_list) then "--exclude-id-list" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graft_level: "[p|c|o|f|g]  Taxonomic level to graft extensions to\\nfoundation. Default is g (genus). p=phylum,\\nc=class, o=order, f=family."
    stderr: "Saves error log file (optional)"
    exclude_id_list: "Will not save accession id file (optional)"
    extension_trees_otu_map: "EXTENSION_TREES_TAXONOM"
    sequence_file: "FOUNDATION_TREE_FILE FO"
    host_tree_output_folder: "Make hybrid-tree using foundation tree. Combines two genetic databases"
  }
  output {
    File out_stdout = stdout()
  }
}
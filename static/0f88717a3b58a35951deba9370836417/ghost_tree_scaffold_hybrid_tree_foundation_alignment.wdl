version 1.0

task GhosttreeScaffoldHybridtreefoundationalignment {
  input {
    Boolean? graft_level
    Boolean? stderr
    Boolean? save_foundation_alignment
    Boolean? save_foundation_tree
    Boolean? exclude_id_list
    String ghost_tree_output_folder
  }
  command <<<
    ghost_tree scaffold hybrid_tree_foundation_alignment \
      ~{ghost_tree_output_folder} \
      ~{if (graft_level) then "--graft-level" else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if (save_foundation_alignment) then "--save-foundation-alignment" else ""} \
      ~{if (save_foundation_tree) then "--save-foundation-tree" else ""} \
      ~{if (exclude_id_list) then "--exclude-id-list" else ""}
  >>>
  parameter_meta {
    graft_level: "[p|c|o|f|g]    Taxonomic level to graft extensions to\\nfoundation. Default is g (genus). p=phylum,\\nc=class, o=order, f=family."
    stderr: "Saves error log file (optional)"
    save_foundation_alignment: "Saves non-redundant foundation alignment file\\n(optional)"
    save_foundation_tree: "Saves foundation phylogenetic tree file\\n(optional)"
    exclude_id_list: "Will not save accession id file (optional)"
    ghost_tree_output_folder: "Make hybrid-tree using foundation alignment."
  }
  output {
    File out_stdout = stdout()
  }
}
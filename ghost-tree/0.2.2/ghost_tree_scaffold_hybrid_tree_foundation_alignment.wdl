version 1.0

task GhostTreeScaffoldHybridTreeFoundationAlignment {
  input {
    Boolean? graft_level
    Boolean? stderr
    Boolean? save_foundation_alignment
    Boolean? save_foundation_tree
    Boolean? exclude_id_list
  }
  command <<<
    ghost-tree scaffold hybrid-tree-foundation-alignment \
      ~{true="--graft-level" false="" graft_level} \
      ~{true="--stderr" false="" stderr} \
      ~{true="--save-foundation-alignment" false="" save_foundation_alignment} \
      ~{true="--save-foundation-tree" false="" save_foundation_tree} \
      ~{true="--exclude-id-list" false="" exclude_id_list}
  >>>
  parameter_meta {
    graft_level: "[p|c|o|f|g]    Taxonomic level to graft extensions to foundation. Default is g (genus). p=phylum, c=class, o=order, f=family."
    stderr: "Saves error log file (optional)"
    save_foundation_alignment: "Saves non-redundant foundation alignment file (optional)"
    save_foundation_tree: "Saves foundation phylogenetic tree file (optional)"
    exclude_id_list: "Will not save accession id file (optional)"
  }
}
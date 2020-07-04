version 1.0

task GhostTreeScaffoldHybridTreeFoundationTree {
  input {
    Boolean? graft_level
    Boolean? stderr
    Boolean? exclude_id_list
  }
  command <<<
    ghost-tree scaffold hybrid-tree-foundation-tree \
      ~{true="--graft-level" false="" graft_level} \
      ~{true="--stderr" false="" stderr} \
      ~{true="--exclude-id-list" false="" exclude_id_list}
  >>>
  parameter_meta {
    graft_level: "[p|c|o|f|g]  Taxonomic level to graft extensions to foundation. Default is g (genus). p=phylum, c=class, o=order, f=family."
    stderr: "Saves error log file (optional)"
    exclude_id_list: "Will not save accession id file (optional)"
  }
}
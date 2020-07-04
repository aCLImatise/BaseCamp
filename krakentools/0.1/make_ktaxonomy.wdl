version 1.0

task MakeKtaxonomy.py {
  input {
    String? nodes
    String? names
    String? seq_id_two_taxid
    String? output_taxonomy_file
  }
  command <<<
    make_ktaxonomy.py \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(seq_id_two_taxid) then ("--seqid2taxid " +  '"' + seq_id_two_taxid + '"') else ""} \
      ~{if defined(output_taxonomy_file) then ("--output " +  '"' + output_taxonomy_file + '"') else ""}
  >>>
  parameter_meta {
    nodes: "nodes.dmp file from taxonomy"
    names: "names.dmp file from taxonomy"
    seq_id_two_taxid: "seqid2taxid.map file"
    output_taxonomy_file: "output taxonomy file"
  }
}
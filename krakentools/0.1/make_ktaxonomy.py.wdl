version 1.0

task MakeKtaxonomypy {
  input {
    File? seq_id_two_taxid
    File? nodes
    File? names
    File? output_taxonomy_file
  }
  command <<<
    make_ktaxonomy_py \
      ~{if defined(seq_id_two_taxid) then ("--seqid2taxid " +  '"' + seq_id_two_taxid + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(output_taxonomy_file) then ("--output " +  '"' + output_taxonomy_file + '"') else ""}
  >>>
  parameter_meta {
    seq_id_two_taxid: ""
    nodes: "nodes.dmp file from taxonomy"
    names: "names.dmp file from taxonomy"
    output_taxonomy_file: "output taxonomy file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_taxonomy_file = "${in_output_taxonomy_file}"
  }
}
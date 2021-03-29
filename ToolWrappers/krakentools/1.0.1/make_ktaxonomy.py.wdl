version 1.0

task MakeKtaxonomypy {
  input {
    File? nodes
    File? names
    File? seq_id_two_taxid
    File? output_taxonomy_file
  }
  command <<<
    make_ktaxonomy_py \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(seq_id_two_taxid) then ("--seqid2taxid " +  '"' + seq_id_two_taxid + '"') else ""} \
      ~{if defined(output_taxonomy_file) then ("--output " +  '"' + output_taxonomy_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    nodes: "nodes.dmp file from taxonomy"
    names: "names.dmp file from taxonomy"
    seq_id_two_taxid: "seqid2taxid.map file"
    output_taxonomy_file: "output taxonomy file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_taxonomy_file = "${in_output_taxonomy_file}"
  }
}
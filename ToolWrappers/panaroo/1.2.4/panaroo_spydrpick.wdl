version 1.0

task Panaroospydrpick {
  input {
    Float? quantile
    File? gene_presence_absence
    Directory? out_dir
    File? tree
    File? clusters
  }
  command <<<
    panaroo_spydrpick \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""} \
      ~{if defined(gene_presence_absence) then ("--input " +  '"' + gene_presence_absence + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panaroo:1.2.4--py_0"
  }
  parameter_meta {
    quantile: "the quantile used to determine a threshold for keeping\\nMI values (default=0.9)."
    gene_presence_absence: "gene presence absence file (.Rtab) generated by\\nPanaroo"
    out_dir: "location of an output directory"
    tree: "phylogeny in newick format for weigting samples to\\ncontrol for population structure"
    clusters: "sample clusters for weigting to control for population\\nstructure. format: 'sample_name,cluster_id'\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}
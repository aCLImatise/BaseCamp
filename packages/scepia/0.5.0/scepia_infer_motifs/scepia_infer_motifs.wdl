version 1.0

task ScepiaInferMotifs {
  input {
    Boolean? transpose
    String? cluster
    Int? dataset
    Int? n_top_genes
    File? pfm_file
    Int? num_enhancers
    String name_dot
  }
  command <<<
    scepia infer_motifs \
      ~{name_dot} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(n_top_genes) then ("--n_top_genes " +  '"' + n_top_genes + '"') else ""} \
      ~{if defined(pfm_file) then ("--pfmfile " +  '"' + pfm_file + '"') else ""} \
      ~{if defined(num_enhancers) then ("--num_enhancers " +  '"' + num_enhancers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scepia:0.5.0--py_0"
  }
  parameter_meta {
    transpose: "Transpose matrix."
    cluster: "cluster name (default checks for 'louvain' or\\n'leiden')."
    dataset: "Reference dataset (ENCODE.H3K27ac.human)."
    n_top_genes: "Maximum number of variable genes that is used\\n(2000)."
    pfm_file: "Name of motif PFM file or GimmeMotifs database"
    num_enhancers: "Number of enhancers to use for motif activity\\n(10000)."
    name_dot: "-a, --min_annotated INTEGER  Minimum number of cells per cell type (50)."
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ClusterAndSplitGenespl {
  input {
    Boolean? verbose
    Boolean? tx_format
    Int? chunksize
    String? genes
    Directory? genes_prefix
    String? filter_map
    File? clusters
    Int? max_cluster_size
  }
  command <<<
    clusterAndSplitGenes_pl \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (tx_format) then "--txformat" else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(genes_prefix) then ("--genesprefix " +  '"' + genes_prefix + '"') else ""} \
      ~{if defined(filter_map) then ("--filtermap " +  '"' + filter_map + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(max_cluster_size) then ("--maxclustersize " +  '"' + max_cluster_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    verbose: "threshold: minimal number of dependencies between two genes\\nin order to force them into same cluster (default: 10)"
    tx_format: "commonfile holds transcript ids instead of gene ids\\nthe mapping given by the --genes file is used to map transcript ids to gene ids"
    chunksize: "number of genes per chunk (default: 3000)"
    genes: "gene set in GTF format that is split accoring to clustering"
    genes_prefix: "prefix for GTF output, can include directory (default: value of --genes)"
    filter_map: "prefix for short alignment output (default: value of --filtermap)"
    clusters: "output file with clusters"
    max_cluster_size: "maximal size of cluster (default: 50)"
  }
  output {
    File out_stdout = stdout()
    Directory out_genes_prefix = "${in_genes_prefix}"
    File out_clusters = "${in_clusters}"
  }
}
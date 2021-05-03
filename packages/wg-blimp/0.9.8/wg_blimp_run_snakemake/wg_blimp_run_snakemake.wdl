version 1.0

task WgblimpRunsnakemake {
  input {
    Boolean? dry_run
    Boolean? use_sample_files
    Int? cores
    Boolean? genome_build
    String? cluster
    Int? nodes
    String fast_q_dir
    String reference_fast_a
    Int group_one
  }
  command <<<
    wg_blimp run_snakemake \
      ~{fast_q_dir} \
      ~{reference_fast_a} \
      ~{group_one} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (use_sample_files) then "--use-sample-files" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (genome_build) then "--genome_build" else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wg-blimp:0.9.8--pyh5e36f6f_0"
  }
  parameter_meta {
    dry_run: "Only dry-run the pipeline."
    use_sample_files: "Load sample names from text files instead of\\npassing them as a comma-seperated list."
    cores: "The number of cores to use for running the\\npipeline. In cluster mode, this sets cores\\nused per node.  [required]"
    genome_build: "[hg19|hg38|mmul10]\\nBuild of the reference used for annotation."
    cluster: "Submission command snakemake uses for\\ncluster usage. Setting this parameter\\nenables snakemake's cluster mode."
    nodes: "Number of nodes to use in cluster mode."
    fast_q_dir: ""
    reference_fast_a: ""
    group_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}
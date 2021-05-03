version 1.0

task WgblimpRunsnakemakefromconfig {
  input {
    Boolean? dry_run
    Int? cores
    String? cluster
    Int? nodes
    String config_yaml
  }
  command <<<
    wg_blimp run_snakemake_from_config \
      ~{config_yaml} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wg-blimp:0.9.8--pyh5e36f6f_0"
  }
  parameter_meta {
    dry_run: "Only dry-run the workflow."
    cores: "The maximum number of cores to use for running the\\npipeline. Cores per job are set in configuration file. In\\ncluster mode, this sets cores used per node.  [required]"
    cluster: "Submission command snakemake uses for cluster usage.\\nSetting this parameter enables snakemake's cluster mode."
    nodes: "Number of nodes to use in cluster mode."
    config_yaml: ""
  }
  output {
    File out_stdout = stdout()
  }
}
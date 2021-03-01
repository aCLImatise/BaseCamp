version 1.0

task WgblimpRunsnakemake {
  input {
    Boolean? dry_run
    Boolean? use_sample_files
    Int? cores
    Boolean? genome_build
    String pipeline_dot
  }
  command <<<
    wg_blimp run_snakemake \
      ~{pipeline_dot} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (use_sample_files) then "--use-sample-files" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (genome_build) then "--genome_build" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wg-blimp:0.9.7--pyh3252c3a_0"
  }
  parameter_meta {
    dry_run: "Only dry-run the pipeline."
    use_sample_files: "Load sample names from text files instead of\\npassing them as a comma-seperated list."
    cores: "The number of cores to use for running the"
    genome_build: "[hg19|hg38|mmul10]\\nBuild of the reference used for annotation."
    pipeline_dot: "[required]"
  }
  output {
    File out_stdout = stdout()
  }
}
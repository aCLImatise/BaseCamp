version 1.0

task AtlasRun {
  input {
    File? working_dir
    File? config_file
    Int? jobs
    String? profile
    Boolean? dry_run
  }
  command <<<
    atlas run \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagenome-atlas:2.4.5--py_0"
  }
  parameter_meta {
    working_dir: "location to run atlas."
    config_file: "config-file generated with 'atlas init'"
    jobs: "use at most this many jobs in parallel (see cluster\\nsubmission for mor details)."
    profile: "snakemake profile e.g. for cluster execution."
    dry_run: "Test execution.  [default: False]"
  }
  output {
    File out_stdout = stdout()
  }
}
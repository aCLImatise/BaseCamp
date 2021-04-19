version 1.0

task TritimapRun {
  input {
    File? working_dir
    File? config_file
    Int? jobs
    Boolean? dry_run
    String? profile
    String done_dot
  }
  command <<<
    tritimap run \
      ~{done_dot} \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tritimap:0.9.3--pyh5e36f6f_0"
  }
  parameter_meta {
    working_dir: "Triti-Map running directory."
    config_file: "Triti-Map config file, generated with tritimap init."
    jobs: "Use at most N CPU cores/jobs in parallel."
    dry_run: "Do not execute anything, and display what would be"
    profile: "Name of profile to use for configuring Snakemake."
    done_dot: "[default: False]"
  }
  output {
    File out_stdout = stdout()
  }
}
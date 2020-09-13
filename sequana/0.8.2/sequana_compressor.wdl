version 1.0

task SequanaCompressor {
  input {
    String? source
    Boolean? quiet
    Boolean? recursive
    Boolean? dry_run
    Int? threads
    Int? jobs
    Boolean? bypass_job_limit
    Boolean? unlock
    String? snake_make_options
    String? snake_make_cluster
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_compressor \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (bypass_job_limit) then "--bypass-job-limit" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if defined(snake_make_options) then ("--snakemake-options " +  '"' + snake_make_options + '"') else ""} \
      ~{if defined(snake_make_cluster) then ("--snakemake-cluster " +  '"' + snake_make_cluster + '"') else ""}
  >>>
  parameter_meta {
    source: "be provided but no analysis will be performed"
    quiet: "set verbosity off"
    recursive: "recursive search"
    dry_run: "Do not execute anything"
    threads: "Maximum number of threads to use per task (4)."
    jobs: "Maximum number of cores to use at the same time (4)."
    bypass_job_limit: "The number of jobs is limited to 20 to limit IO. If\\nyou want to bypass this limitation, use this option."
    unlock: "If you stopped the application, the underlying\\nsnakemake process are interrupted and directories were\\nsnakemake was launch will be locked. If so please use\\nthis option using the --source and --target as when\\nyou got the error message"
    snake_make_options: "Any valid list of options accepted by snakemake except\\n-s and -j (for -j, use our --jobs argument). Note that\\nby default --keep-going is used ; If you set this\\nargument yourself, you have to add --keep-going as\\nwell otherwise it stops at the first error encountered"
    snake_make_cluster: "a valid snakemake option dedicated to a cluster.\\ne.g on LSF cluster use:\\n--cluster 'qsub -cwd -q<QUEUE> '\\nOn a SLURM system use for example:\\n--cluster 'sbatch --qos normal'\\n"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}
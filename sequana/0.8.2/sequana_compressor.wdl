version 1.0

task SequanaCompressor {
  input {
    Boolean? quiet
    String? source
    String? target
    Boolean? recursive
    Boolean? dry_run
    String? threads
    String? jobs
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
      ~{true="--quiet" false="" quiet} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--dryrun" false="" dry_run} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{true="--bypass-job-limit" false="" bypass_job_limit} \
      ~{true="--unlock" false="" unlock} \
      ~{if defined(snake_make_options) then ("--snakemake-options " +  '"' + snake_make_options + '"') else ""} \
      ~{if defined(snake_make_cluster) then ("--snakemake-cluster " +  '"' + snake_make_cluster + '"') else ""}
  >>>
  parameter_meta {
    quiet: "set verbosity off"
    source: "Search for all source files with this extension. Valid extensions are: fastq, fastq.gz, fastq.bz2, fastq.dscr, fq, fq.gz, fq.bz2 and fq.dsrc"
    target: "Convert the source files to a new target format. Same extensions as above."
    recursive: "recursive search"
    dry_run: "Do not execute anything"
    threads: "Maximum number of threads to use per task (4)."
    jobs: "Maximum number of cores to use at the same time (4)."
    bypass_job_limit: "The number of jobs is limited to 20 to limit IO. If you want to bypass this limitation, use this option."
    unlock: "If you stopped the application, the underlying snakemake process are interrupted and directories were snakemake was launch will be locked. If so please use this option using the --source and --target as when you got the error message"
    snake_make_options: "Any valid list of options accepted by snakemake except -s and -j (for -j, use our --jobs argument). Note that by default --keep-going is used ; If you set this argument yourself, you have to add --keep-going as well otherwise it stops at the first error encountered"
    snake_make_cluster: "a valid snakemake option dedicated to a cluster.   e.g on LSF cluster use: --cluster 'qsub -cwd -q<QUEUE> ' On a SLURM system use for example: --cluster 'sbatch --qos normal'"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
}
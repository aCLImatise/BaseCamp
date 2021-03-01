version 1.0

task IpaDist {
  input {
    File? input_fn
    Boolean? no_polish
    Boolean? no_phase
    Int? genome_size
    Int? coverage
    String? advanced_opt
    Int? n_threads
    Int? n_shards
    Directory? tmp_dir
    Boolean? verbose
    Int? n_jobs
    Directory? run_dir
    String? target
    Boolean? unlock
    Boolean? dry_run
    Boolean? only_print
    String? cluster_args
  }
  command <<<
    ipa dist \
      ~{if defined(input_fn) then ("--input-fn " +  '"' + input_fn + '"') else ""} \
      ~{if (no_polish) then "--no-polish" else ""} \
      ~{if (no_phase) then "--no-phase" else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(advanced_opt) then ("--advanced-opt " +  '"' + advanced_opt + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(n_shards) then ("--nshards " +  '"' + n_shards + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(n_jobs) then ("--njobs " +  '"' + n_jobs + '"') else ""} \
      ~{if defined(run_dir) then ("--run-dir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (only_print) then "--only-print" else ""} \
      ~{if defined(cluster_args) then ("--cluster-args " +  '"' + cluster_args + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fn: "(Required.) Input reads in FASTA, FASTQ, BAM, XML or FOFN formats. Repeat \\\"-i fn1 -i fn2\\\" for multiple inputs, or use a \\\"file-of-filenames\\\", e.g. \\\"-i foo.fofn\\\". (default: [])"
    no_polish: "Skip polishing. (default: False)"
    no_phase: "Skip phasing. (default: False)"
    genome_size: "Genome size, required only for downsampling. (default: 0)"
    coverage: "Downsampled coverage, only if genome_size * coverage > 0. (default: 0)"
    advanced_opt: "Advanced options (quoted). (default: )"
    n_threads: "(Required) Maximum number of threads to use per job. (Applies to both remote and local tasks.) (default: 0)"
    n_shards: "Maximum number of parallel tasks to split work into (though the number of simultaneous jobs could be much lower). (default: 40)"
    tmp_dir: "Temporary directory for some disk based operations like sorting. (default: /tmp)"
    verbose: "Extra logging for each task. (Show full env, e.g.) (default: False)"
    n_jobs: "(Required) Maximum number of simultaneous jobs, each running up to nthreads. (default: 0)"
    run_dir: "Directory in which to run snakemake. (default: ./RUN)"
    target: "\\\"finish\\\" is implied, but you can use this to short-circuit. (default: )"
    unlock: "Pass \\\"--unlock\\\" to snakemake, in case snakemake crashed earlier. (default: False)"
    dry_run: "Print the snakemake command and do a \\\"dry run\\\" quickly. Very useful! (default: False)"
    only_print: "Do not actually run snakemake. Simply print the snakemake command and exit. (default: False)"
    cluster_args: "(Required) Pass this along to snakemake, for conveniently running in a compute cluster. (default: )\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
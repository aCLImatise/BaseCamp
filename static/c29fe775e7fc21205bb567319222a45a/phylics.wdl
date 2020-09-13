version 1.0

task Phylics {
  input {
    Int? output_path
    Boolean? run
    Boolean? run_single
    Boolean? values
    Boolean? run_cn_vs
    Array[String] input_dirs
    Int? binning
    Boolean? run_multiple
    String? method
    String? metric
    String? output_prefix
    Int? tasks
    String? seed
    Int? n_permutations
    Int? rec_lust
    Boolean? reinit
    Array[Int] intervals
    Boolean? verbose
  }
  command <<<
    phylics \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if (run_single) then "--run_single" else ""} \
      ~{if (values) then "--values" else ""} \
      ~{if (run_cn_vs) then "--run_cnvs" else ""} \
      ~{if defined(input_dirs) then ("--input_dirs " +  '"' + input_dirs + '"') else ""} \
      ~{if defined(binning) then ("--binning " +  '"' + binning + '"') else ""} \
      ~{if (run_multiple) then "--run_multiple" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(n_permutations) then ("--n_permutations " +  '"' + n_permutations + '"') else ""} \
      ~{if defined(rec_lust) then ("--reclust " +  '"' + rec_lust + '"') else ""} \
      ~{if (reinit) then "--reinit" else ""} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_path: ""
    run: "Run the pipeline. USAGE: phylics --run [--run_cnvs |"
    run_single: "| --run_multiple] --input_dirs"
    values: "[v [v ...]] --output_path out_path"
    run_cn_vs: "Run only the CNV calling stage. USAGE: phylics --run"
    input_dirs: ""
    binning: ""
    run_multiple: "Run only the multiple-sample analysis stage. USAGE:\\nphylics --run --run_multiple --input_dirs\\nsample:input_dir [sample:input_dir ...] --output_path\\nout_path [--output_prefix out_prefix] [--verbose]"
    method: "Clustering method (default = complete)"
    metric: "Distance metric"
    output_prefix: "A string to be pre-pended to the names automatically\\ngenerated for the output directories"
    tasks: "Maximum number of tasks to be run in parallel. It\\nallows to execute single-sample analyses in parallel\\nand to parallelize the permutation test execution for\\nthe heterogeneity score computation."
    seed: "Seed to initialize the pseudo-random generator used to\\nperform the permutation test."
    n_permutations: "Number of permutations to execute the permutation test\\nfor the heterogeneity score computation."
    rec_lust: "If this option is specified, only the clustering part\\nis executed with the specified number of clusters (see\\n--n_clusters option), unless --reinit option is\\nspecified (see below)."
    reinit: "This option has effect only if combined with the"
    intervals: "List of of mean ploidy intervals: cells which mean\\nploidies are in the specified ranges are filtered out"
    verbose: "Verbose execution."
  }
  output {
    File out_stdout = stdout()
  }
}
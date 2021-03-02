version 1.0

task MultiSamplePostAnalysis {
  input {
    Int? n_permutations
    String? seed
    Int? rec_lust
    Boolean? reinit
    String? clustering
    Boolean? verbose
    Int? n_jobs
    String seg_copy
    String clust_method
    String distance_metric
    String out_dir
  }
  command <<<
    multi_sample_post_analysis \
      ~{seg_copy} \
      ~{clust_method} \
      ~{distance_metric} \
      ~{out_dir} \
      ~{if defined(n_permutations) then ("--n_permutations " +  '"' + n_permutations + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(rec_lust) then ("--reclust " +  '"' + rec_lust + '"') else ""} \
      ~{if (reinit) then "--reinit" else ""} \
      ~{if defined(clustering) then ("--clustering " +  '"' + clustering + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(n_jobs) then ("--n_jobs " +  '"' + n_jobs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_permutations: "Number of permutations to execute the permutation test\\nfor sample coesion score."
    seed: "Seed to initialize the pseudo-random generator used to\\nperform the permutation test."
    rec_lust: "If this option is specified, only the clustering part\\nis executed with the specified number of clusters,\\nunless --reinit option is specified (see below)."
    reinit: "This option has effect only if combined with the"
    clustering: "It allows to recompute the entire"
    verbose: "Verbose execution."
    n_jobs: "Number of parallel jobs to speed up pvalue computation"
    seg_copy: "Sample name and cnvs filepath separated by \\\":\\\". At\\nleast two samples must be provided."
    clust_method: "Clustering method."
    distance_metric: "Distance metric."
    out_dir: "Path to the output directory (must exist)."
  }
  output {
    File out_stdout = stdout()
  }
}
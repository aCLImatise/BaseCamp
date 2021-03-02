version 1.0

task SingleSamplePostAnalysis {
  input {
    String? seed
    Int? rec_lust
    Boolean? reinit
    String? clustering
    Boolean? verbose
    String sample_name
    String seg_copy
    String results_dot_txt
    String clust_method
    String distance_metric
    String outdir
  }
  command <<<
    single_sample_post_analysis \
      ~{sample_name} \
      ~{seg_copy} \
      ~{results_dot_txt} \
      ~{clust_method} \
      ~{distance_metric} \
      ~{outdir} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(rec_lust) then ("--reclust " +  '"' + rec_lust + '"') else ""} \
      ~{if (reinit) then "--reinit" else ""} \
      ~{if defined(clustering) then ("--clustering " +  '"' + clustering + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seed: "Seed to initialize the pseudo-random generator used to\\nperform the permutation test."
    rec_lust: "If this option is specified, only the clustering part\\nis executed with the specified number of clusters,\\nunless --reinit option is specified (see below)."
    reinit: "This option has effect only if combined with the"
    clustering: "It allows to recompute the entire"
    verbose: "Verbose execution."
    sample_name: "Sample name."
    seg_copy: "Path to cnvs file."
    results_dot_txt: "Path to stats file."
    clust_method: "Clustering method"
    distance_metric: "Distance metric"
    outdir: "Path to the desired output directory where the merged\\nfiles have to be stored"
  }
  output {
    File out_stdout = stdout()
  }
}
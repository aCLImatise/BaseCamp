version 1.0

task SingleSamplePostAnalysis {
  input {
    String? seed
    String? rec_lust
    Boolean? reinit
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
      ~{true="--reinit" false="" reinit} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    seed: "Seed to initialize the pseudo-random generator used to perform the permutation test."
    rec_lust: "If this option is specified, only the clustering part is executed with the specified number of clusters, unless --reinit option is specified (see below)."
    reinit: "This option has effect only if combined with the --clustering option. It allows to recompute the entire analysis and then recluster with the specified number of clusters."
    verbose: "Verbose execution."
    sample_name: "Sample name."
    seg_copy: "Path to cnvs file."
    results_dot_txt: "Path to stats file."
    clust_method: "Clustering method"
    distance_metric: "Distance metric"
    outdir: "Path to the desired output directory where the merged files have to be stored"
  }
}
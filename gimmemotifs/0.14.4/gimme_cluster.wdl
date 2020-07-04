version 1.0

task GimmeCluster {
  input {
    Boolean? compare_reverse_complements
    String? cluster_threshold
    Int? n_threads
    Boolean? h
    String input_file
    String outdir
  }
  command <<<
    gimme cluster \
      ~{input_file} \
      ~{outdir} \
      ~{true="-s" false="" compare_reverse_complements} \
      ~{if defined(cluster_threshold) then ("-t " +  '"' + cluster_threshold + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    compare_reverse_complements: "Don't compare reverse complements of motifs"
    cluster_threshold: "Cluster threshold"
    n_threads: "Number of threads (default 12)"
    h: ""
    input_file: "Inputfile (PFM format)"
    outdir: "Name of output directory"
  }
}
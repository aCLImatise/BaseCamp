version 1.0

task PbaaCluster {
  input {
    Boolean? filter
    Boolean? trim_ends
    Boolean? min_var_frequency
    Boolean? fixed_cluster_count
    Boolean? em_iterations
    Boolean? no_cluster_by_length
    Boolean? min_cluster_frequency
    Boolean? min_cluster_read_count
    Boolean? max_consensus_reads
    Boolean? off_target_groups
    Boolean? max_amplicon_size
    Boolean? min_read_qv
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String prefix
  }
  command <<<
    pbaa cluster \
      ~{prefix} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (trim_ends) then "--trim-ends" else ""} \
      ~{if (min_var_frequency) then "--min-var-frequency" else ""} \
      ~{if (fixed_cluster_count) then "--fixed-cluster-count" else ""} \
      ~{if (em_iterations) then "--em-iterations" else ""} \
      ~{if (no_cluster_by_length) then "--no-cluster-by-length" else ""} \
      ~{if (min_cluster_frequency) then "--min-cluster-frequency" else ""} \
      ~{if (min_cluster_read_count) then "--min-cluster-read-count" else ""} \
      ~{if (max_consensus_reads) then "--max-consensus-reads" else ""} \
      ~{if (off_target_groups) then "--off-target-groups" else ""} \
      ~{if (max_amplicon_size) then "--max-amplicon-size" else ""} \
      ~{if (min_read_qv) then "--min-read-qv" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbaa:0.1.4--0"
  }
  parameter_meta {
    filter: "INT    Low coverage kmer count cutoff. Automatically adjusted by min-var-frequency. [3]"
    trim_ends: "INT    Number of bases to trim from both sides of reads during graph construction. [20]"
    min_var_frequency: "FLOAT  Minimum variant frequency. [0.05]"
    fixed_cluster_count: "INT    Maximum number of clusters per locus/guide-group. [10]"
    em_iterations: "INT    Number of iterations to run expectation maximization. [300]"
    no_cluster_by_length: "Disable fallback length clustering if no variants were discovered."
    min_cluster_frequency: "FLOAT  Low frequency cluster cutoff. [0.1]"
    min_cluster_read_count: "INT    Low read count cluster cutoff. [5]"
    max_consensus_reads: "INT    Maximum number of reads to use per cluster consensus. [100]"
    off_target_groups: "STR    Group names to exclude, i.e. these loci are off-target (not amplified)."
    max_amplicon_size: "INT    Upper read length cutoff, longer reads will be skipped. [15000]"
    min_read_qv: "FLOAT  Low read QV cutoff. [20]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    prefix: "STR    Output prefix for run."
  }
  output {
    File out_stdout = stdout()
  }
}
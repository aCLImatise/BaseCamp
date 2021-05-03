version 1.0

task PbaaCluster {
  input {
    Boolean? filter
    Boolean? trim_ends
    Boolean? pile_size
    Boolean? min_var_frequency
    Boolean? max_alignments_per_read
    Boolean? max_reads_per_guide
    Boolean? iterations
    Boolean? seed
    Boolean? max_consensus_reads
    Boolean? max_amplicon_size
    Boolean? min_read_qv
    Boolean? off_target_groups
    Boolean? min_cluster_frequency
    Boolean? min_cluster_read_count
    Boolean? max_u_chime_score
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String files_dot
  }
  command <<<
    pbaa cluster \
      ~{files_dot} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (trim_ends) then "--trim-ends" else ""} \
      ~{if (pile_size) then "--pile-size" else ""} \
      ~{if (min_var_frequency) then "--min-var-frequency" else ""} \
      ~{if (max_alignments_per_read) then "--max-alignments-per-read" else ""} \
      ~{if (max_reads_per_guide) then "--max-reads-per-guide" else ""} \
      ~{if (iterations) then "--iterations" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (max_consensus_reads) then "--max-consensus-reads" else ""} \
      ~{if (max_amplicon_size) then "--max-amplicon-size" else ""} \
      ~{if (min_read_qv) then "--min-read-qv" else ""} \
      ~{if (off_target_groups) then "--off-target-groups" else ""} \
      ~{if (min_cluster_frequency) then "--min-cluster-frequency" else ""} \
      ~{if (min_cluster_read_count) then "--min-cluster-read-count" else ""} \
      ~{if (max_u_chime_score) then "--max-uchime-score" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbaa:1.0.0--hdfd78af_0"
  }
  parameter_meta {
    filter: "INT    Variants with coverage lower than filter\\nwill be ignored. [3]"
    trim_ends: "INT    Number of bases to trim from both sides of\\nreads during graph construction and variant\\ndetection. [5]"
    pile_size: "INT    The number of best alignments to keep for\\neach read during error correction. [30]"
    min_var_frequency: "FLOAT  Minimum coverage frequency within a pile.\\n[0.3]"
    max_alignments_per_read: "INT    The number of random alignments, for each\\nread, within a guide grouping [1000]"
    max_reads_per_guide: "INT    The number randomly selected reads to use\\nwithin a guide grouping. [500]"
    iterations: "INT    Number of iterations to run k-means. [9]"
    seed: "INT    Randomization seed. [1984]"
    max_consensus_reads: "INT    Maximum number of reads to use per cluster\\nconsensus. [100]"
    max_amplicon_size: "INT    Upper read length cutoff, longer reads will\\nbe skipped. [15000]"
    min_read_qv: "FLOAT  Low read QV cutoff. [20]"
    off_target_groups: "STR    Group names to exclude, i.e. these loci are\\noff-target (not amplified)."
    min_cluster_frequency: "FLOAT  Low frequency cluster cutoff. [0.1]"
    min_cluster_read_count: "INT    Low read count cluster cutoff. [5]"
    max_u_chime_score: "FLOAT  High UCHIME score cutoff. [1]"
    num_threads: "INT    Number of threads to use, 0 means\\nautodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE,\\nDEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    files_dot: "prefix                     STR    Output prefix for run."
  }
  output {
    File out_stdout = stdout()
  }
}
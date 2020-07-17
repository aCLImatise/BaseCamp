version 1.0

task FastenMetrics {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Boolean? each_read
    String? distribution
  }
  command <<<
    fasten_metrics \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--each-read" false="" each_read} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    each_read: "Print the metrics for each read. This creates very large output"
    distribution: "Print the distribution for each metric. Must supply either 'normal' or 'nonparametric'"
  }
}
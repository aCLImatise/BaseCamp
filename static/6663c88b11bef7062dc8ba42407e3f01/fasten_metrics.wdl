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
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (each_read) then "--each-read" else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    each_read: "Print the metrics for each read. This creates very\\nlarge output"
    distribution: "Print the distribution for each metric. Must supply\\neither 'normal' or 'nonparametric'\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
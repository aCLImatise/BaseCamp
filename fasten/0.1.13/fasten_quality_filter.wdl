version 1.0

task FastenQualityFilter {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Int? max_quality
  }
  command <<<
    fasten_quality_filter \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(max_quality) then ("--max-quality " +  '"' + max_quality + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    max_quality: "The maximum quality at which a base will be\\ntransformed to 'N'\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
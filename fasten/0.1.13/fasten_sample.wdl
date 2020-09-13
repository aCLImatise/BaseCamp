version 1.0

task FastenSample {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Float? frequency
  }
  command <<<
    fasten_sample \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    frequency: "Frequency of sequences to print, 0 to 1. Default: 1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
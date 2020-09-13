version 1.0

task FastenPe {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Boolean? print_reads
  }
  command <<<
    fasten_pe \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (print_reads) then "--print-reads" else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    print_reads: "Print each read. Useful for Unix pipes."
  }
  output {
    File out_stdout = stdout()
  }
}
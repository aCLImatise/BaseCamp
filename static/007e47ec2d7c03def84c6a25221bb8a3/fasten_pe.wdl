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
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--print-reads" false="" print_reads}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    print_reads: "Print each read. Useful for Unix pipes."
  }
}
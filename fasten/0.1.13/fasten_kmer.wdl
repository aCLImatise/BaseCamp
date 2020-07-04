version 1.0

task FastenKmer {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Int? km_er_length
  }
  command <<<
    fasten_kmer \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(km_er_length) then ("--kmer-length " +  '"' + km_er_length + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    km_er_length: "The size of the kmer"
  }
}
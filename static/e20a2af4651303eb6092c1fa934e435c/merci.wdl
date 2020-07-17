version 1.0

task Merci {
  input {
    Boolean? verbose
    Boolean? nb_cores
    Boolean? km_er_size
    Boolean? assembly
    Boolean? reads
  }
  command <<<
    merci \
      ~{true="-verbose" false="" verbose} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-assembly" false="" assembly} \
      ~{true="-reads" false="" reads}
  >>>
  parameter_meta {
    verbose: "(1 arg) :    verbosity level  [default '1']"
    nb_cores: "(1 arg) :    number of threads  [default '0']"
    km_er_size: "(1 arg) :    kmer size"
    assembly: "(1 arg) :    assembly to improve"
    reads: "(1 arg) :    input reads (fasta/fastq/compressed)"
  }
}
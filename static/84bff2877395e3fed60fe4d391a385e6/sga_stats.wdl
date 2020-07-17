version 1.0

task SgaStats {
  input {
    Boolean? verbose
    String? prefix
    String? threads
    String? sample_rate
    String? km_er_size
    String? num_reads
    String? branch_cut_off
    Boolean? run_lengths
    Boolean? km_er_distribution
    Boolean? no_overlap
    String? option
  }
  command <<<
    sga stats \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(branch_cut_off) then ("--branch-cutoff " +  '"' + branch_cut_off + '"') else ""} \
      ~{true="--run-lengths" false="" run_lengths} \
      ~{true="--kmer-distribution" false="" km_er_distribution} \
      ~{true="--no-overlap" false="" no_overlap}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    threads: "use NUM threads to compute the overlaps (default: 1)"
    sample_rate: "use occurrence array sample rate of N in the FM-index. Higher values use significantly less memory at the cost of higher runtime. This value must be a power of 2 (default: 128)"
    km_er_size: "The length of the kmer to use. (default: 27)"
    num_reads: "Only use N reads to compute the statistics"
    branch_cut_off: "stop the overlap search at N branches. This lowers the compute time but will bias the statistics away from repetitive reads"
    run_lengths: "Print the run length distribution of the BWT"
    km_er_distribution: "Print the distribution of kmer counts"
    no_overlap: "Suppress the overlap-based error statistics (faster if you only want the k-mer distribution)"
    option: ""
  }
}
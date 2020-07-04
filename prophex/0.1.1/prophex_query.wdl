version 1.0

task ProphexQuery {
  input {
    Int? length_of_kmer
    Boolean? use_klcp_querying
    Boolean? output_set_chromosomes
    Boolean? check_kmer_border
    Boolean? print_sequences_qualities
    String? log_file_name
    Int? number_of_threads
    String idx_base
    String in_dot_fq
  }
  command <<<
    prophex query \
      ~{idx_base} \
      ~{in_dot_fq} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{true="-u" false="" use_klcp_querying} \
      ~{true="-v" false="" output_set_chromosomes} \
      ~{true="-p" false="" check_kmer_border} \
      ~{true="-b" false="" print_sequences_qualities} \
      ~{if defined(log_file_name) then ("-l " +  '"' + log_file_name + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  parameter_meta {
    length_of_kmer: "length of k-mer"
    use_klcp_querying: "use k-LCP for querying"
    output_set_chromosomes: "output set of chromosomes for every k-mer"
    check_kmer_border: "do not check whether k-mer is on border of two contigs, and show such k-mers in output"
    print_sequences_qualities: "print sequences and base qualities"
    log_file_name: "log file name to output statistics"
    number_of_threads: "number of threads [1]"
    idx_base: ""
    in_dot_fq: ""
  }
}
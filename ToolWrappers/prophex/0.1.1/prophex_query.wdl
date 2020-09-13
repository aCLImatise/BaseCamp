version 1.0

task ProphexQuery {
  input {
    Int? length_of_kmer
    Boolean? use_klcp_querying
    Boolean? output_set_chromosomes
    Boolean? check_kmer_border
    Boolean? print_sequences_qualities
    File? log_file_name
    Int? number_of_threads
    String idx_base
    String in_dot_fq
  }
  command <<<
    prophex query \
      ~{idx_base} \
      ~{in_dot_fq} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{if (use_klcp_querying) then "-u" else ""} \
      ~{if (output_set_chromosomes) then "-v" else ""} \
      ~{if (check_kmer_border) then "-p" else ""} \
      ~{if (print_sequences_qualities) then "-b" else ""} \
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
  output {
    File out_stdout = stdout()
    File out_log_file_name = "${in_log_file_name}"
  }
}
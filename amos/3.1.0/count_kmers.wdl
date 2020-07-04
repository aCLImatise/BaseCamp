version 1.0

task CountKmers {
  input {
    String? multifasta_file_count
    String? bank_reads_count
    String? bank_contigs_count
    String? report_normalized_counts
    String? length_of_kmer
    Int? minimum_count_report
    Boolean? only_count_strand
    Boolean? print_using_count
    Boolean? just_print_statistics
  }
  command <<<
    count-kmers \
      ~{if defined(multifasta_file_count) then ("-f " +  '"' + multifasta_file_count + '"') else ""} \
      ~{if defined(bank_reads_count) then ("-r " +  '"' + bank_reads_count + '"') else ""} \
      ~{if defined(bank_contigs_count) then ("-c " +  '"' + bank_contigs_count + '"') else ""} \
      ~{if defined(report_normalized_counts) then ("-n " +  '"' + report_normalized_counts + '"') else ""} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{if defined(minimum_count_report) then ("-m " +  '"' + minimum_count_report + '"') else ""} \
      ~{true="-F" false="" only_count_strand} \
      ~{true="-S" false="" print_using_count} \
      ~{true="-s" false="" just_print_statistics}
  >>>
  parameter_meta {
    multifasta_file_count: "multifasta file to count"
    bank_reads_count: "Bank of reads to count"
    bank_contigs_count: "Bank of contigs to count"
    report_normalized_counts: "Report normalized counts (readmercount/contigmercount)"
    length_of_kmer: "Length of kmer "
    minimum_count_report: "Minimum count to report (default: 1)"
    only_count_strand: "Only count the forward strand"
    print_using_count: "Print using simple nmer count format: mer count"
    just_print_statistics: "Just print statistics on unique mers"
  }
}
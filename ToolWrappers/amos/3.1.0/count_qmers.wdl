version 1.0

task Countqmers {
  input {
    File? multifasta_file_count
    String? bank_reads_count
    String? bank_contigs_count
    String? report_normalized_counts
    Int? length_of_kmer
    Int? minimum_count_report
    Boolean? print_using_count
    String? gigabyte_limit_ram
  }
  command <<<
    count_qmers \
      ~{if defined(multifasta_file_count) then ("-f " +  '"' + multifasta_file_count + '"') else ""} \
      ~{if defined(bank_reads_count) then ("-r " +  '"' + bank_reads_count + '"') else ""} \
      ~{if defined(bank_contigs_count) then ("-c " +  '"' + bank_contigs_count + '"') else ""} \
      ~{if defined(report_normalized_counts) then ("-n " +  '"' + report_normalized_counts + '"') else ""} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{if defined(minimum_count_report) then ("-m " +  '"' + minimum_count_report + '"') else ""} \
      ~{if (print_using_count) then "-S" else ""} \
      ~{if defined(gigabyte_limit_ram) then ("-l " +  '"' + gigabyte_limit_ram + '"') else ""}
  >>>
  parameter_meta {
    multifasta_file_count: "multifasta file to count"
    bank_reads_count: "Bank of reads to count"
    bank_contigs_count: "Bank of contigs to count"
    report_normalized_counts: "Report normalized counts (readmercount/contigmercount)"
    length_of_kmer: "Length of kmer"
    minimum_count_report: "Minimum count to report (default: 1)"
    print_using_count: "Print using simple nmer count format: mer count"
    gigabyte_limit_ram: "Gigabyte limit on RAM. If limited, the output will contain redundancies"
  }
  output {
    File out_stdout = stdout()
  }
}
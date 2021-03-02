version 1.0

task Rapsearch {
  input {
    File? query_file_format
    File? database_file_base
    File? output_file_name
    Int? stream_one_result
    Int? _number_threads
    Int? report_logevalue_evalue
    Float? evalue_threshold_given
    Float? threshold_bit_score
    Int? threshold_minimal_alignment
    Int? number_show_descriptions
    Int? number_show_alignments
    String? type_query_sequences
    File? output_allmatched_query
    String? apply_gap_extension
    Int? use_fast_mode
    String? apply_hssp_criterion
    String? print_hits_xml
  }
  command <<<
    rapsearch \
      ~{if defined(query_file_format) then ("-q " +  '"' + query_file_format + '"') else ""} \
      ~{if defined(database_file_base) then ("-d " +  '"' + database_file_base + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(stream_one_result) then ("-u " +  '"' + stream_one_result + '"') else ""} \
      ~{if defined(_number_threads) then ("-z " +  '"' + _number_threads + '"') else ""} \
      ~{if defined(report_logevalue_evalue) then ("-s " +  '"' + report_logevalue_evalue + '"') else ""} \
      ~{if defined(evalue_threshold_given) then ("-e " +  '"' + evalue_threshold_given + '"') else ""} \
      ~{if defined(threshold_bit_score) then ("-i " +  '"' + threshold_bit_score + '"') else ""} \
      ~{if defined(threshold_minimal_alignment) then ("-l " +  '"' + threshold_minimal_alignment + '"') else ""} \
      ~{if defined(number_show_descriptions) then ("-v " +  '"' + number_show_descriptions + '"') else ""} \
      ~{if defined(number_show_alignments) then ("-b " +  '"' + number_show_alignments + '"') else ""} \
      ~{if defined(type_query_sequences) then ("-t " +  '"' + type_query_sequences + '"') else ""} \
      ~{if defined(output_allmatched_query) then ("-p " +  '"' + output_allmatched_query + '"') else ""} \
      ~{if defined(apply_gap_extension) then ("-g " +  '"' + apply_gap_extension + '"') else ""} \
      ~{if defined(use_fast_mode) then ("-a " +  '"' + use_fast_mode + '"') else ""} \
      ~{if defined(apply_hssp_criterion) then ("-w " +  '"' + apply_hssp_criterion + '"') else ""} \
      ~{if defined(print_hits_xml) then ("-x " +  '"' + print_hits_xml + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_file_format: ": query file or stdin (FASTA or FASTQ format)"
    database_file_base: ": database file (**base name only**, with full path)"
    output_file_name: ": output file name"
    stream_one_result: ": stream one result through stdout [1: m8 result, 2: aln result, default: don't stream any result through stdout]"
    _number_threads: ": number of threads [default: 1]"
    report_logevalue_evalue: ": report log10(E-value) or E-value for each hit [t/T: log10(E-value), the default; f/F: E-value]"
    evalue_threshold_given: ": E-value threshold, given in the format of log10(E-value), or E-value (when -s is set to f) [default: 1.0/10.0]."
    threshold_bit_score: ": threshold of bit score [default: 0.0]. It is the alternative option to limit the hits to report."
    threshold_minimal_alignment: ": threshold of minimal alignment length [default: 0]"
    number_show_descriptions: ": number of database sequences to show one-line descriptions [default: 500]. If it's -1, all results will be shown."
    number_show_alignments: ": number of database sequence to show alignments [default: 100]. If it's -1, all results will be shown."
    type_query_sequences: ": type of query sequences [u/U:unknown, n/N:nucleotide, a/A:amino acid, q/Q:fastq, default: u]"
    output_allmatched_query: ": output ALL/MATCHED query reads into the alignment file [t/T: output all query reads, f/F: output matched reads, default: f]"
    apply_gap_extension: ": apply gap extension [t/T: yes, f/F: no, default: t]"
    use_fast_mode: ": use fast mode (10~30 fold) [t/T: yes, f/F: no, default: f]"
    apply_hssp_criterion: ": apply HSSP criterion instead of E-value criterion [t/T: HSSP, f/F: E-value criteria, default: f]"
    print_hits_xml: ": print hits in xml format [t/T: yes, f/F: no, default: f]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_output_allmatched_query = "${in_output_allmatched_query}"
  }
}
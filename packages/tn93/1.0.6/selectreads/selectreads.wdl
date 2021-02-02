version 1.0

task Selectreads {
  input {
    File? direct_fasta_file
    Int? count_following_characters
    Int? start_filter_inclusive
    Int? end_filter_inclusive
    Float? require_retained_reads
    String? type_data_expected
    Boolean? report_progress_updates
  }
  command <<<
    selectreads \
      ~{if defined(direct_fasta_file) then ("-o " +  '"' + direct_fasta_file + '"') else ""} \
      ~{if defined(count_following_characters) then ("-a " +  '"' + count_following_characters + '"') else ""} \
      ~{if defined(start_filter_inclusive) then ("-s " +  '"' + start_filter_inclusive + '"') else ""} \
      ~{if defined(end_filter_inclusive) then ("-e " +  '"' + end_filter_inclusive + '"') else ""} \
      ~{if defined(require_retained_reads) then ("-c " +  '"' + require_retained_reads + '"') else ""} \
      ~{if defined(type_data_expected) then ("-t " +  '"' + type_data_expected + '"') else ""} \
      ~{if (report_progress_updates) then "-q" else ""}
  >>>
  parameter_meta {
    direct_fasta_file: "direct the FASTA file with matching (and trimmed reads) to a file named OUTPUT (default=stdout)"
    count_following_characters: "count the following characters AGAINST coverage numbers (default=gaponly)\\ngaponly: gap character ('-') is counted as lack of coverage;\\nnfold: gap character AND N-fold ambiguities (N and ?) are counted as lack of coverage;\\nthreefold: gap character, 4-fold ambiguities, AND 3-fold ambiguities (e.g. M and S) are counted as lack of coverage;\\nany: ALL incompletely resolved characters are counted as lack of coverage;"
    start_filter_inclusive: "start of the region to filter, 0-based, INCLUSIVE, must be an integer strictly than the length of the alignment (default=0L)\\ne.g. -s 102 -e 203 will span nucleotides 103 through 204"
    end_filter_inclusive: "end of the region to filter, INCLUSIVE, 0-based, capped at [length of the alignment - 1] (default=0xFFFFFF)"
    require_retained_reads: "require that retained reads cover at least this proportion of the region (default=0.95)\\nmust be a floating point in (0,1]"
    type_data_expected: "the type of data expected (default=dna)\\ndna: DNA or RNA (IUPAC);\\nprotein : protein (IUPAC);"
    report_progress_updates: "do not report progress updates and other diagnostics to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_direct_fasta_file = "${in_direct_fasta_file}"
  }
}
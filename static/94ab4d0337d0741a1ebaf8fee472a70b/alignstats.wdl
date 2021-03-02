version 1.0

task Alignstats {
  input {
    Boolean? print_verbose_runtime
    Int? maximum_number_keep
    Boolean? use_separate_threads
    Int? number_htslib_decompression
    File? read_input_file
    File? specify_file_format
    String? write_report_output
    File? file_bed_format_listing_processed
    File? file_listing_regions
    File? file_bed_format_listing_regions
    File? indexed_fasta_reference
    Int? only_process_records_minimum
    Int? only_process_records_bits
    Int? only_process_records_none
    Int? filter_bases_base
    Boolean? disable_excluding_reads
    Boolean? bydetermining_overlapping_bases
    Boolean? enable_excluding_fromfirst
    Boolean? disable_processing_unplaced
    Boolean? disable_reporting_alignment
    Boolean? disable_reporting_capture
    Boolean? disable_reporting_whole
    String statistics_dot
  }
  command <<<
    alignstats \
      ~{statistics_dot} \
      ~{if (print_verbose_runtime) then "-v" else ""} \
      ~{if defined(maximum_number_keep) then ("-n " +  '"' + maximum_number_keep + '"') else ""} \
      ~{if (use_separate_threads) then "-p" else ""} \
      ~{if defined(number_htslib_decompression) then ("-P " +  '"' + number_htslib_decompression + '"') else ""} \
      ~{if defined(read_input_file) then ("-i " +  '"' + read_input_file + '"') else ""} \
      ~{if defined(specify_file_format) then ("-j " +  '"' + specify_file_format + '"') else ""} \
      ~{if defined(write_report_output) then ("-o " +  '"' + write_report_output + '"') else ""} \
      ~{if defined(file_bed_format_listing_processed) then ("-r " +  '"' + file_bed_format_listing_processed + '"') else ""} \
      ~{if defined(file_listing_regions) then ("-t " +  '"' + file_listing_regions + '"') else ""} \
      ~{if defined(file_bed_format_listing_regions) then ("-m " +  '"' + file_bed_format_listing_regions + '"') else ""} \
      ~{if defined(indexed_fasta_reference) then ("-T " +  '"' + indexed_fasta_reference + '"') else ""} \
      ~{if defined(only_process_records_minimum) then ("-q " +  '"' + only_process_records_minimum + '"') else ""} \
      ~{if defined(only_process_records_bits) then ("-f " +  '"' + only_process_records_bits + '"') else ""} \
      ~{if defined(only_process_records_none) then ("-F " +  '"' + only_process_records_none + '"') else ""} \
      ~{if defined(filter_bases_base) then ("-b " +  '"' + filter_bases_base + '"') else ""} \
      ~{if (disable_excluding_reads) then "-D" else ""} \
      ~{if (bydetermining_overlapping_bases) then "-M" else ""} \
      ~{if (enable_excluding_fromfirst) then "-O" else ""} \
      ~{if (disable_processing_unplaced) then "-U" else ""} \
      ~{if (disable_reporting_alignment) then "-A" else ""} \
      ~{if (disable_reporting_capture) then "-C" else ""} \
      ~{if (disable_reporting_whole) then "-W" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_verbose_runtime: "Print verbose runtime information output to stderr."
    maximum_number_keep: "Maximum number of records to keep in memory."
    use_separate_threads: "Use separate threads for reading and processing records\\n(requires builtin pthread support)."
    number_htslib_decompression: "Number of HTSlib decompression threads to spawn."
    read_input_file: "Read INPUT as the input SAM, BAM, or CRAM file (stdin). Input\\nmust be coordinate-sorted for accurate results."
    specify_file_format: "Specify file format of input alignment file (\\\"sam\\\", \\\"bam\\\", or\\n\\\"cram\\\" available, default guessed from filename or \\\"sam\\\")."
    write_report_output: "Write report to OUTPUT (stdout)."
    file_bed_format_listing_processed: "File in BED format listing which regions to process. By\\ndefault, all available records are processed. This option\\nrequires the alignment file to be indexed."
    file_listing_regions: "File in BED format listing capture coverage regions. Required\\nif capture coverage statistics are enabled."
    file_bed_format_listing_regions: "File in BED format listing regions of N bases in reference.\\nCoverage counts will be suppressed for these regions."
    indexed_fasta_reference: "Indexed FASTA reference file for CRAM input alignment."
    only_process_records_minimum: "Only process records with minimum mapping quality of INT."
    only_process_records_bits: "Only process records with all bits in INT set in FLAG."
    only_process_records_none: "Only process records with none of bits in INT set in FLAG."
    filter_bases_base: "Filter bases with base quality below INT from coverage"
    disable_excluding_reads: "Disable excluding duplicate reads from coverage statistics."
    bydetermining_overlapping_bases: "Enable excluding overlapping bases in paired-end reads by\\ndetermining overlapping bases from MC tag."
    enable_excluding_fromfirst: "Enable excluding overlapping bases in paired-end reads from\\nfirst read in coordinate-sorted order from coverage statistics."
    disable_processing_unplaced: "Disable processing unplaced unmapped reads (CHROM \\\"*\\\") when\\nusing the -r option."
    disable_reporting_alignment: "Disable reporting alignment statistics."
    disable_reporting_capture: "Disable reporting capture coverage statistics."
    disable_reporting_whole: "Disable reporting whole genome coverage statistics."
    statistics_dot: "Reporting options:"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Alignstats {
  input {
    Boolean? print_verbose_output
    Int? maximum_number_records
    Boolean? use_separate_threads
    Int? number_htslib_spawn
    String? read_input_input
    String? specify_file_format
    String? write_report_output
    String? file_listing_process
    String? file_bed_format
    String? file_format_listing
    String? indexed_fasta_reference
    Int? only_process_records_minimum
    Int? only_process_records_bits
    Int? only_process_records_none
    Int? filter_bases_base
    Boolean? disable_excluding_reads
    Boolean? by_determining_bases
    Boolean? from_first_read
    Boolean? disable_processing_unplaced
    Boolean? disable_reporting_alignment
    Boolean? disable_reporting_capture
    Boolean? disable_reporting_statistics
  }
  command <<<
    alignstats \
      ~{true="-v" false="" print_verbose_output} \
      ~{if defined(maximum_number_records) then ("-n " +  '"' + maximum_number_records + '"') else ""} \
      ~{true="-p" false="" use_separate_threads} \
      ~{if defined(number_htslib_spawn) then ("-P " +  '"' + number_htslib_spawn + '"') else ""} \
      ~{if defined(read_input_input) then ("-i " +  '"' + read_input_input + '"') else ""} \
      ~{if defined(specify_file_format) then ("-j " +  '"' + specify_file_format + '"') else ""} \
      ~{if defined(write_report_output) then ("-o " +  '"' + write_report_output + '"') else ""} \
      ~{if defined(file_listing_process) then ("-r " +  '"' + file_listing_process + '"') else ""} \
      ~{if defined(file_bed_format) then ("-t " +  '"' + file_bed_format + '"') else ""} \
      ~{if defined(file_format_listing) then ("-m " +  '"' + file_format_listing + '"') else ""} \
      ~{if defined(indexed_fasta_reference) then ("-T " +  '"' + indexed_fasta_reference + '"') else ""} \
      ~{if defined(only_process_records_minimum) then ("-q " +  '"' + only_process_records_minimum + '"') else ""} \
      ~{if defined(only_process_records_bits) then ("-f " +  '"' + only_process_records_bits + '"') else ""} \
      ~{if defined(only_process_records_none) then ("-F " +  '"' + only_process_records_none + '"') else ""} \
      ~{if defined(filter_bases_base) then ("-b " +  '"' + filter_bases_base + '"') else ""} \
      ~{true="-D" false="" disable_excluding_reads} \
      ~{true="-M" false="" by_determining_bases} \
      ~{true="-O" false="" from_first_read} \
      ~{true="-U" false="" disable_processing_unplaced} \
      ~{true="-A" false="" disable_reporting_alignment} \
      ~{true="-C" false="" disable_reporting_capture} \
      ~{true="-W" false="" disable_reporting_statistics}
  >>>
  parameter_meta {
    print_verbose_output: "Print verbose runtime information output to stderr."
    maximum_number_records: "Maximum number of records to keep in memory."
    use_separate_threads: "Use separate threads for reading and processing records (requires builtin pthread support)."
    number_htslib_spawn: "Number of HTSlib decompression threads to spawn."
    read_input_input: "Read INPUT as the input SAM, BAM, or CRAM file (stdin). Input must be coordinate-sorted for accurate results."
    specify_file_format: "Specify file format of input alignment file (\"sam\", \"bam\", or \"cram\" available, default guessed from filename or \"sam\")."
    write_report_output: "Write report to OUTPUT (stdout)."
    file_listing_process: "File in BED format listing which regions to process. By default, all available records are processed. This option requires the alignment file to be indexed."
    file_bed_format: "File in BED format listing capture coverage regions. Required if capture coverage statistics are enabled."
    file_format_listing: "File in BED format listing regions of N bases in reference. Coverage counts will be suppressed for these regions."
    indexed_fasta_reference: "Indexed FASTA reference file for CRAM input alignment."
    only_process_records_minimum: "Only process records with minimum mapping quality of INT."
    only_process_records_bits: "Only process records with all bits in INT set in FLAG."
    only_process_records_none: "Only process records with none of bits in INT set in FLAG."
    filter_bases_base: "Filter bases with base quality below INT from coverage statistics."
    disable_excluding_reads: "Disable excluding duplicate reads from coverage statistics."
    by_determining_bases: "Enable excluding overlapping bases in paired-end reads by determining overlapping bases from MC tag."
    from_first_read: "Enable excluding overlapping bases in paired-end reads from first read in coordinate-sorted order from coverage statistics."
    disable_processing_unplaced: "Disable processing unplaced unmapped reads (CHROM \"*\") when using the -r option."
    disable_reporting_alignment: "Disable reporting alignment statistics."
    disable_reporting_capture: "Disable reporting capture coverage statistics."
    disable_reporting_statistics: "Disable reporting whole genome coverage statistics."
  }
}
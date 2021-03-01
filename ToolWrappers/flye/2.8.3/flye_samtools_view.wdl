version 1.0

task FlyesamtoolsView {
  input {
    Boolean? output_bam
    Boolean? output_cram_requires
    Boolean? use_compression_implies
    Boolean? uncompressed_bam_output
    Boolean? print_sam_header
    Boolean? print_only_count
    File? output_file_name
    File? output_reads_selected
    File? file_listing_names
    File? only_include_reads_overlapping
    String? only_include_reads_read_str
    File? only_include_reads_read
    Int? only_include_reads_mapping_int
    String? only_include_reads_library_str
    Int? only_include_reads_number_int
    Int? only_include_reads_flags_present
    Int? only_include_reads_none_present
    Int? only_exclude_reads
    Float? subsample_reads_given
    Boolean? use_multiregion_iterator
    String? read_tag_strip
    Boolean? collapse_cigar_operation
    Boolean? ignored_input_format
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    String sam_tools
    String view
    String in_dot_bam
  }
  command <<<
    flye_samtools view \
      ~{sam_tools} \
      ~{view} \
      ~{in_dot_bam} \
      ~{if (output_bam) then "-b" else ""} \
      ~{if (output_cram_requires) then "-C" else ""} \
      ~{if (use_compression_implies) then "-1" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (print_sam_header) then "-H" else ""} \
      ~{if (print_only_count) then "-c" else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_reads_selected) then ("-U " +  '"' + output_reads_selected + '"') else ""} \
      ~{if defined(file_listing_names) then ("-t " +  '"' + file_listing_names + '"') else ""} \
      ~{if defined(only_include_reads_overlapping) then ("-L " +  '"' + only_include_reads_overlapping + '"') else ""} \
      ~{if defined(only_include_reads_read_str) then ("-r " +  '"' + only_include_reads_read_str + '"') else ""} \
      ~{if defined(only_include_reads_read) then ("-R " +  '"' + only_include_reads_read + '"') else ""} \
      ~{if defined(only_include_reads_mapping_int) then ("-q " +  '"' + only_include_reads_mapping_int + '"') else ""} \
      ~{if defined(only_include_reads_library_str) then ("-l " +  '"' + only_include_reads_library_str + '"') else ""} \
      ~{if defined(only_include_reads_number_int) then ("-m " +  '"' + only_include_reads_number_int + '"') else ""} \
      ~{if defined(only_include_reads_flags_present) then ("-f " +  '"' + only_include_reads_flags_present + '"') else ""} \
      ~{if defined(only_include_reads_none_present) then ("-F " +  '"' + only_include_reads_none_present + '"') else ""} \
      ~{if defined(only_exclude_reads) then ("-G " +  '"' + only_exclude_reads + '"') else ""} \
      ~{if defined(subsample_reads_given) then ("-s " +  '"' + subsample_reads_given + '"') else ""} \
      ~{if (use_multiregion_iterator) then "-M" else ""} \
      ~{if defined(read_tag_strip) then ("-x " +  '"' + read_tag_strip + '"') else ""} \
      ~{if (collapse_cigar_operation) then "-B" else ""} \
      ~{if (ignored_input_format) then "-S" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0"
  }
  parameter_meta {
    output_bam: "output BAM"
    output_cram_requires: "output CRAM (requires -T)"
    use_compression_implies: "use fast BAM compression (implies -b)"
    uncompressed_bam_output: "uncompressed BAM output (implies -b)"
    print_sam_header: "print SAM header only (no alignments)"
    print_only_count: "print only the count of matching records"
    output_file_name: "output file name [stdout]"
    output_reads_selected: "output reads not selected by filters to FILE [null]"
    file_listing_names: "FILE listing reference names and lengths (see long help) [null]"
    only_include_reads_overlapping: "only include reads overlapping this BED FILE [null]"
    only_include_reads_read_str: "only include reads in read group STR [null]"
    only_include_reads_read: "only include reads with read group listed in FILE [null]"
    only_include_reads_mapping_int: "only include reads with mapping quality >= INT [0]"
    only_include_reads_library_str: "only include reads in library STR [null]"
    only_include_reads_number_int: "only include reads with number of CIGAR operations consuming\\nquery sequence >= INT [0]"
    only_include_reads_flags_present: "only include reads with all  of the FLAGs in INT present [0]"
    only_include_reads_none_present: "only include reads with none of the FLAGS in INT present [0]"
    only_exclude_reads: "only EXCLUDE reads with all  of the FLAGs in INT present [0]"
    subsample_reads_given: "subsample reads (given INT.FRAC option value, 0.FRAC is the\\nfraction of templates/read pairs to keep; INT part sets seed)"
    use_multiregion_iterator: "use the multi-region iterator (increases the speed, removes\\nduplicates and outputs the reads as they are ordered in the file)"
    read_tag_strip: "read tag to strip (repeatable) [null]"
    collapse_cigar_operation: "collapse the backward CIGAR operation"
    ignored_input_format: "ignored (input format is auto-detected)"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]\\n"
    sam_tools: ""
    view: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_output_reads_selected = "${in_output_reads_selected}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}
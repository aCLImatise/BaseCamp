version 1.0

task SamtoolsDepth {
  input {
    String? list_positions_regions
    Boolean? use_customized_files
    String? list_input_bam
    Boolean? print_file_header
    Int? read_threshold_ignore
    Int? maximum_coverage_depth
    File? where_write_output
    Int? base_quality_threshold
    Int? mapping_quality_threshold
    Boolean? chrfromto__region
    String? remove_specified_flags
    Int? add_specified_flags
    Boolean? include_reads_deletions
    Boolean? overlapping_section_basesof
    File? input_fmt_option
    File? reference
    Int? verbosity
    Int in_one_dot_bam
  }
  command <<<
    samtools depth \
      ~{in_one_dot_bam} \
      ~{if defined(list_positions_regions) then ("-b " +  '"' + list_positions_regions + '"') else ""} \
      ~{if (use_customized_files) then "-X" else ""} \
      ~{if defined(list_input_bam) then ("-f " +  '"' + list_input_bam + '"') else ""} \
      ~{if (print_file_header) then "-H" else ""} \
      ~{if defined(read_threshold_ignore) then ("-l " +  '"' + read_threshold_ignore + '"') else ""} \
      ~{if defined(maximum_coverage_depth) then ("-d " +  '"' + maximum_coverage_depth + '"') else ""} \
      ~{if defined(where_write_output) then ("-o " +  '"' + where_write_output + '"') else ""} \
      ~{if defined(base_quality_threshold) then ("-q " +  '"' + base_quality_threshold + '"') else ""} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if (chrfromto__region) then "-r" else ""} \
      ~{if defined(remove_specified_flags) then ("-g " +  '"' + remove_specified_flags + '"') else ""} \
      ~{if defined(add_specified_flags) then ("-G " +  '"' + add_specified_flags + '"') else ""} \
      ~{if (include_reads_deletions) then "-J" else ""} \
      ~{if (overlapping_section_basesof) then "-s" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  parameter_meta {
    list_positions_regions: "list of positions or regions"
    use_customized_files: "use customized index files"
    list_input_bam: "list of input BAM filenames, one per line [null]"
    print_file_header: "print a file header"
    read_threshold_ignore: "read length threshold (ignore reads shorter than <int>) [0]"
    maximum_coverage_depth: "maximum coverage depth [8000]. If 0, depth is set to the maximum\\ninteger value, effectively removing any depth limit."
    where_write_output: "where to write output to [stdout]"
    base_quality_threshold: "base quality threshold [0]"
    mapping_quality_threshold: "mapping quality threshold [0]"
    chrfromto__region: "<chr:from-to>    region"
    remove_specified_flags: "remove the specified flags from the set used to filter out reads"
    add_specified_flags: "add the specified flags to the set used to filter out reads\\nThe default set is UNMAP,SECONDARY,QCFAIL,DUP or 0x704"
    include_reads_deletions: "include reads with deletions in depth computation"
    overlapping_section_basesof: "for the overlapping section of a read pair, count only the bases\\nof a single read. This option will automatically raise the base quality\\nthreshold to at least 1."
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}
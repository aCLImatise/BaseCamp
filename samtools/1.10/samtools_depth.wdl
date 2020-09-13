version 1.0

task SamtoolsDepth {
  input {
    String? list_positions_regions
    Boolean? use_customized_files
    String? list_input_bam
    Boolean? print_file_header
    Int? read_ignore_reads
    Int? d_slash_m
    File? where_write_output
    Int? base_quality_threshold
    Int? mapping_quality_threshold
    Boolean? chrfromto__region
    Int? include_reads_specified
    String? filter_reads_specified
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
      ~{if defined(read_ignore_reads) then ("-l " +  '"' + read_ignore_reads + '"') else ""} \
      ~{if defined(d_slash_m) then ("-d/-m " +  '"' + d_slash_m + '"') else ""} \
      ~{if defined(where_write_output) then ("-o " +  '"' + where_write_output + '"') else ""} \
      ~{if defined(base_quality_threshold) then ("-q " +  '"' + base_quality_threshold + '"') else ""} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if (chrfromto__region) then "-r" else ""} \
      ~{if defined(include_reads_specified) then ("-g " +  '"' + include_reads_specified + '"') else ""} \
      ~{if defined(filter_reads_specified) then ("-G " +  '"' + filter_reads_specified + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    list_positions_regions: "list of positions or regions"
    use_customized_files: "use customized index files"
    list_input_bam: "list of input BAM filenames, one per line [null]"
    print_file_header: "print a file header"
    read_ignore_reads: "read length threshold (ignore reads shorter than <int>) [0]"
    d_slash_m: "maximum coverage depth [8000]. If 0, depth is set to the maximum\\ninteger value, effectively removing any depth limit."
    where_write_output: "where to write output to [stdout]"
    base_quality_threshold: "base quality threshold [0]"
    mapping_quality_threshold: "mapping quality threshold [0]"
    chrfromto__region: "<chr:from-to>    region"
    include_reads_specified: "include reads that have any of the specified flags set [0]"
    filter_reads_specified: "filter out reads that have any of the specified flags set                       [UNMAP,SECONDARY,QCFAIL,DUP]"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SamtoolsView {
  input {
    Boolean? output_bam
    Boolean? print_header_alignments
    Boolean? input_is_sam
    Boolean? uncompressed_bam_output
    Boolean? output_flag_hex
    Boolean? output_flag_string
    File? list_reference_names
    File? reference_sequence_file
    File? output_file_name
    File? list_read_groups
    Int? required_flag_unset
    Int? filtering_flag_unset
    Int? minimum_mapping_quality
    String? only_output_reads_library_str
    String? only_output_reads_read_str
    String in_dot_bam
  }
  command <<<
    samtools view \
      ~{in_dot_bam} \
      ~{if (output_bam) then "-b" else ""} \
      ~{if (print_header_alignments) then "-H" else ""} \
      ~{if (input_is_sam) then "-S" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (output_flag_hex) then "-x" else ""} \
      ~{if (output_flag_string) then "-X" else ""} \
      ~{if defined(list_reference_names) then ("-t " +  '"' + list_reference_names + '"') else ""} \
      ~{if defined(reference_sequence_file) then ("-T " +  '"' + reference_sequence_file + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(list_read_groups) then ("-R " +  '"' + list_read_groups + '"') else ""} \
      ~{if defined(required_flag_unset) then ("-f " +  '"' + required_flag_unset + '"') else ""} \
      ~{if defined(filtering_flag_unset) then ("-F " +  '"' + filtering_flag_unset + '"') else ""} \
      ~{if defined(minimum_mapping_quality) then ("-q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(only_output_reads_library_str) then ("-l " +  '"' + only_output_reads_library_str + '"') else ""} \
      ~{if defined(only_output_reads_read_str) then ("-r " +  '"' + only_output_reads_read_str + '"') else ""}
  >>>
  parameter_meta {
    output_bam: "output BAM"
    print_header_alignments: "print header only (no alignments)"
    input_is_sam: "input is SAM"
    uncompressed_bam_output: "uncompressed BAM output (force -b)"
    output_flag_hex: "output FLAG in HEX (samtools-C specific)"
    output_flag_string: "output FLAG in string (samtools-C specific)"
    list_reference_names: "list of reference names and lengths (force -S) [null]"
    reference_sequence_file: "reference sequence file (force -S) [null]"
    output_file_name: "output file name [stdout]"
    list_read_groups: "list of read groups to be outputted [null]"
    required_flag_unset: "required flag, 0 for unset [0]"
    filtering_flag_unset: "filtering flag, 0 for unset [0]"
    minimum_mapping_quality: "minimum mapping quality [0]"
    only_output_reads_library_str: "only output reads in library STR [null]"
    only_output_reads_read_str: "only output reads in read group STR [null]"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}
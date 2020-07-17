version 1.0

task FilteroutBam {
  input {
    Boolean? write_output_bam_compressed
    String? select_discard_alignment
    File? write_output_bam_file
    String? select_discard_records_mapping
    Array[String] original_mapping_quality
    String? select_discard_records_more
    Array[String] more_num_original
    Boolean? display_file_information
    String? option
  }
  command <<<
    filterout-bam \
      ~{option} \
      ~{true="-c" false="" write_output_bam_compressed} \
      ~{if defined(select_discard_alignment) then ("-f " +  '"' + select_discard_alignment + '"') else ""} \
      ~{if defined(write_output_bam_file) then ("-o " +  '"' + write_output_bam_file + '"') else ""} \
      ~{if defined(select_discard_records_mapping) then ("-q " +  '"' + select_discard_records_mapping + '"') else ""} \
      ~{if defined(original_mapping_quality) then ("-Q " +  '"' + original_mapping_quality + '"') else ""} \
      ~{if defined(select_discard_records_more) then ("-s " +  '"' + select_discard_records_more + '"') else ""} \
      ~{if defined(more_num_original) then ("-S " +  '"' + more_num_original + '"') else ""} \
      ~{true="-v" false="" display_file_information}
  >>>
  parameter_meta {
    write_output_bam_compressed: "Write output BAM compressed [uncompressed]"
    select_discard_alignment: "Select and discard alignment records matching FLAGS"
    write_output_bam_file: "Write output BAM file to FILE rather than standard output"
    select_discard_records_mapping: "Select and discard records with mapping quality less than NUM"
    original_mapping_quality: "with original mapping quality (ZM:i) less than NUM"
    select_discard_records_more: "Select and discard records with more than NUM suboptimal hits"
    more_num_original: "with more than NUM original suboptimal hits (Z1:i)"
    display_file_information: "Display file information and statistics"
    option: ""
  }
}
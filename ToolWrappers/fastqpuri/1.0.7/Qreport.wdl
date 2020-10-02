version 1.0

task Qreport {
  input {
    String? package_version
    String? help_dialog
    File? file_mandatory_option
    Int? length_length_reads
    File? file_prefix_extension
    Int? tiles_optional_default
    Int? quality_allowed_default
    Int? different_quality_values
    File? status_original_file
    Int? value_quality_score
    Int? values_low_quality
  }
  command <<<
    Qreport \
      ~{if defined(package_version) then ("-v " +  '"' + package_version + '"') else ""} \
      ~{if defined(help_dialog) then ("-h " +  '"' + help_dialog + '"') else ""} \
      ~{if defined(file_mandatory_option) then ("-i " +  '"' + file_mandatory_option + '"') else ""} \
      ~{if defined(length_length_reads) then ("-l " +  '"' + length_length_reads + '"') else ""} \
      ~{if defined(file_prefix_extension) then ("-o " +  '"' + file_prefix_extension + '"') else ""} \
      ~{if defined(tiles_optional_default) then ("-t " +  '"' + tiles_optional_default + '"') else ""} \
      ~{if defined(quality_allowed_default) then ("-q " +  '"' + quality_allowed_default + '"') else ""} \
      ~{if defined(different_quality_values) then ("-n " +  '"' + different_quality_values + '"') else ""} \
      ~{if defined(status_original_file) then ("-f " +  '"' + status_original_file + '"') else ""} \
      ~{if defined(value_quality_score) then ("-0 " +  '"' + value_quality_score + '"') else ""} \
      ~{if defined(values_low_quality) then ("-Q " +  '"' + values_low_quality + '"') else ""}
  >>>
  parameter_meta {
    package_version: "package version."
    help_dialog: "help dialog."
    file_mandatory_option: "file [*fq|*fq.gz|*fq.bz2]. Mandatory option."
    length_length_reads: "length. Length of the reads. Mandatory option."
    file_prefix_extension: "file prefix (with NO extension). Mandatory option."
    tiles_optional_default: "of tiles. Optional (default 96)."
    quality_allowed_default: "quality allowed. Optional (default 27)."
    different_quality_values: "of different quality values allowed. Optional (default 46)."
    status_original_file: "status: 0 original file, 1 file filtered with trimFilter,\\n2 file filtered with another tool. Optional (default 0)."
    value_quality_score: "value for quality score 0. Optional (default 33)."
    values_low_quality: "values for low quality proportion plot. Optional (default 27,33,37),\\nFormat is either <int>[,<int>]* or <min-int>:<max-int>."
  }
  output {
    File out_stdout = stdout()
  }
}
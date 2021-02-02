version 1.0

task Cdhitdup {
  input {
    Boolean? input_file_fastq
    Boolean? i_two
    File? output_file
    File? o_two
    Boolean? description_length_default
    Boolean? length_prefix_used
    Boolean? match_truefalse_default
    Boolean? maximum_number_mismatches
    Boolean? filter_clusters_truefalse
    Boolean? minimum_length_common
    Boolean? abundance_cutoff_default
    Boolean? abundance_ratio_read
    Boolean? dissimilarity_control_chimeric
    String? other
  }
  command <<<
    cd_hit_dup \
      ~{other} \
      ~{if (input_file_fastq) then "-i" else ""} \
      ~{if (i_two) then "-i2" else ""} \
      ~{if (output_file) then "-o" else ""} \
      ~{if (o_two) then "-o2" else ""} \
      ~{if (description_length_default) then "-d" else ""} \
      ~{if (length_prefix_used) then "-u" else ""} \
      ~{if (match_truefalse_default) then "-m" else ""} \
      ~{if (maximum_number_mismatches) then "-e" else ""} \
      ~{if (filter_clusters_truefalse) then "-f" else ""} \
      ~{if (minimum_length_common) then "-s" else ""} \
      ~{if (abundance_cutoff_default) then "-a" else ""} \
      ~{if (abundance_ratio_read) then "-b" else ""} \
      ~{if (dissimilarity_control_chimeric) then "-p" else ""}
  >>>
  parameter_meta {
    input_file_fastq: "Input file (FASTQ or FASTA);"
    i_two: "Second input file (FASTQ or FASTA);"
    output_file: "Output file;"
    o_two: "Output file for R2;"
    description_length_default: "Description length (default 0, truncate at the first whitespace character)"
    length_prefix_used: "Length of prefix to be used in the analysis (default 0, for full/maximum length);"
    match_truefalse_default: "Match length (true/false, default true);"
    maximum_number_mismatches: "Maximum number of mismatches allowd;"
    filter_clusters_truefalse: "Filter out chimeric clusters (true/false, default false);"
    minimum_length_common: "Minimum length of common sequence shared between a chimeric read\\nand each of its parents (default 30, minimum 20);"
    abundance_cutoff_default: "Abundance cutoff (default 1 without chimeric filtering, 2 with chimeric filtering);"
    abundance_ratio_read: "Abundance ratio between a parent read and chimeric read (default 1);"
    dissimilarity_control_chimeric: "Dissimilarity control for chimeric filtering (default 1);"
    other: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_o_two = "${in_o_two}"
  }
}
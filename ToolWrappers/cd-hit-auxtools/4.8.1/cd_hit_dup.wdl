version 1.0

task Cdhitdup {
  input {
    Boolean? input_file_fastq
    Boolean? i_two
    File? output_file
    File? o_two
    Boolean? description_length_default
    Boolean? length_prefix_used
    Boolean? match_length_truefalse
    Boolean? maximum_number_allowd
    Boolean? filter_chimeric_clusters
    Boolean? minimum_length_common
    Boolean? abundance_cutoff_default
    Boolean? abundance_ratio_parent
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
      ~{if (match_length_truefalse) then "-m" else ""} \
      ~{if (maximum_number_allowd) then "-e" else ""} \
      ~{if (filter_chimeric_clusters) then "-f" else ""} \
      ~{if (minimum_length_common) then "-s" else ""} \
      ~{if (abundance_cutoff_default) then "-a" else ""} \
      ~{if (abundance_ratio_parent) then "-b" else ""} \
      ~{if (dissimilarity_control_chimeric) then "-p" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cd-hit-auxtools:4.8.1--hc9558a2_0"
  }
  parameter_meta {
    input_file_fastq: "Input file (FASTQ or FASTA);"
    i_two: "Second input file (FASTQ or FASTA);"
    output_file: "Output file;"
    o_two: "Output file for R2;"
    description_length_default: "Description length (default 0, truncate at the first whitespace character)"
    length_prefix_used: "Length of prefix to be used in the analysis (default 0, for full/maximum length);"
    match_length_truefalse: "Match length (true/false, default true);"
    maximum_number_allowd: "Maximum number of mismatches allowd;"
    filter_chimeric_clusters: "Filter out chimeric clusters (true/false, default false);"
    minimum_length_common: "Minimum length of common sequence shared between a chimeric read\\nand each of its parents (default 30, minimum 20);"
    abundance_cutoff_default: "Abundance cutoff (default 1 without chimeric filtering, 2 with chimeric filtering);"
    abundance_ratio_parent: "Abundance ratio between a parent read and chimeric read (default 1);"
    dissimilarity_control_chimeric: "Dissimilarity control for chimeric filtering (default 1);"
    other: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_o_two = "${in_o_two}"
  }
}
version 1.0

task CdHitDup {
  input {
    Boolean? input_file_fastq
    Boolean? i_two
    Boolean? output_file
    Boolean? o_two
    Boolean? description_length_default
    Boolean? length_prefix_used
    Boolean? match_length_default
    Boolean? maximum_number_mismatches
    Boolean? filter_chimeric_clusters
    Boolean? minimum_length_common
    Boolean? abundance_cutoff_default
    Boolean? abundance_ratio_parent
    Boolean? dissimilarity_control_chimeric
    String? other
  }
  command <<<
    cd-hit-dup \
      ~{other} \
      ~{true="-i" false="" input_file_fastq} \
      ~{true="-i2" false="" i_two} \
      ~{true="-o" false="" output_file} \
      ~{true="-o2" false="" o_two} \
      ~{true="-d" false="" description_length_default} \
      ~{true="-u" false="" length_prefix_used} \
      ~{true="-m" false="" match_length_default} \
      ~{true="-e" false="" maximum_number_mismatches} \
      ~{true="-f" false="" filter_chimeric_clusters} \
      ~{true="-s" false="" minimum_length_common} \
      ~{true="-a" false="" abundance_cutoff_default} \
      ~{true="-b" false="" abundance_ratio_parent} \
      ~{true="-p" false="" dissimilarity_control_chimeric}
  >>>
  parameter_meta {
    input_file_fastq: "Input file (FASTQ or FASTA);"
    i_two: "Second input file (FASTQ or FASTA);"
    output_file: "Output file;"
    o_two: "Output file for R2;"
    description_length_default: "Description length (default 0, truncate at the first whitespace character)"
    length_prefix_used: "Length of prefix to be used in the analysis (default 0, for full/maximum length);"
    match_length_default: "Match length (true/false, default true);"
    maximum_number_mismatches: "Maximum number of mismatches allowd;"
    filter_chimeric_clusters: "Filter out chimeric clusters (true/false, default false);"
    minimum_length_common: "Minimum length of common sequence shared between a chimeric read and each of its parents (default 30, minimum 20);"
    abundance_cutoff_default: "Abundance cutoff (default 1 without chimeric filtering, 2 with chimeric filtering);"
    abundance_ratio_parent: "Abundance ratio between a parent read and chimeric read (default 1);"
    dissimilarity_control_chimeric: "Dissimilarity control for chimeric filtering (default 1);"
    other: ""
  }
}
version 1.0

task VcfSampleCompare.pl {
  input {
    String? vcf_outfile_suffix
    String? summary_outfile_suffix
    String? group_sample_names
    Boolean? minimum_number_use
    String? a
    Boolean? no_g
    Boolean? no_f
    Boolean? no_w
    Int? minimum_read_dp
    Int? adequate_read_dp
    Boolean? extended
  }
  command <<<
    vcfSampleCompare.pl \
      ~{if defined(vcf_outfile_suffix) then ("-o " +  '"' + vcf_outfile_suffix + '"') else ""} \
      ~{if defined(summary_outfile_suffix) then ("-u " +  '"' + summary_outfile_suffix + '"') else ""} \
      ~{if defined(group_sample_names) then ("-s " +  '"' + group_sample_names + '"') else ""} \
      ~{true="-d" false="" minimum_number_use} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{true="--no-g" false="" no_g} \
      ~{true="--no-f" false="" no_f} \
      ~{true="--no-w" false="" no_w} \
      ~{if defined(minimum_read_dp) then ("-l " +  '"' + minimum_read_dp + '"') else ""} \
      ~{if defined(adequate_read_dp) then ("-x " +  '"' + adequate_read_dp + '"') else ""} \
      ~{true="--extended" false="" extended}
  >>>
  parameter_meta {
    vcf_outfile_suffix: "VCF outfile suffix (appended to -i)."
    summary_outfile_suffix: "[STDOUT] Summary outfile suffix (appended to -i)."
    group_sample_names: "...     [any^] A group of sample names for difference comparisons. ^ See --extended usage."
    minimum_number_use: "<int,...>...     [all*] Minimum number of samples to use in a group to determine difference with its partner."
    a: "[0.7] Minimum observation ratio difference [0-1]."
    no_g: "Do not use genotype calls for sorting/filtering."
    no_f: "Do not filter variant rows."
    no_w: "Do not add samples to sample groups beyond the --min- group-size."
    minimum_read_dp: "[4] Minimum read depth (DP)."
    adequate_read_dp: "[20] Adequate read depth (DP)."
    extended: "[<cnt>]  Print detailed usage."
  }
}
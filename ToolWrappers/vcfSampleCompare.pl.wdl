version 1.0

task VcfSampleComparepl {
  input {
    String? vcf_outfile_suffix
    String? summary_outfile_suffix
    String? group_sample_names
    Boolean? int_minimum_number
    Float? a
    Boolean? no_g
    Boolean? no_f
    Boolean? no_w
    Int? adequate_read_dp
    Boolean? extended
    Int group_size_dot
  }
  command <<<
    vcfSampleCompare_pl \
      ~{group_size_dot} \
      ~{if defined(vcf_outfile_suffix) then ("-o " +  '"' + vcf_outfile_suffix + '"') else ""} \
      ~{if defined(summary_outfile_suffix) then ("-u " +  '"' + summary_outfile_suffix + '"') else ""} \
      ~{if defined(group_sample_names) then ("-s " +  '"' + group_sample_names + '"') else ""} \
      ~{if (int_minimum_number) then "-d" else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if (no_g) then "--no-g" else ""} \
      ~{if (no_f) then "--no-f" else ""} \
      ~{if (no_w) then "--no-w" else ""} \
      ~{if defined(adequate_read_dp) then ("-x " +  '"' + adequate_read_dp + '"') else ""} \
      ~{if (extended) then "--extended" else ""}
  >>>
  parameter_meta {
    vcf_outfile_suffix: "VCF outfile suffix (appended to -i)."
    summary_outfile_suffix: "[STDOUT] Summary outfile suffix (appended to -i)."
    group_sample_names: "...     [any^] A group of sample names for difference comparisons.\\n^ See --extended usage."
    int_minimum_number: "<int,...>...     [all*] Minimum number of samples to use in a group to\\ndetermine difference with its partner."
    a: "[0.7] Minimum observation ratio difference [0-1]."
    no_g: "Do not use genotype calls for sorting/filtering."
    no_f: "Do not filter variant rows."
    no_w: "Do not add samples to sample groups beyond the --min-"
    adequate_read_dp: "[20] Adequate read depth (DP)."
    extended: "[<cnt>]  Print detailed usage."
    group_size_dot: "-l <int>            [4] Minimum read depth (DP)."
  }
  output {
    File out_stdout = stdout()
  }
}
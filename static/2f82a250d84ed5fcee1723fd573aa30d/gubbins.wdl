version 1.0

task Gubbins {
  input {
    Boolean? newick_tree_file
    Boolean? vcf_file
    Boolean? original_multifasta_file
    Boolean? min_snps_identifying
    Boolean? min_window_size
    Boolean? max_window_size
    Float two_dot_four_dot_one
  }
  command <<<
    gubbins \
      ~{two_dot_four_dot_one} \
      ~{if (newick_tree_file) then "-t" else ""} \
      ~{if (vcf_file) then "-v" else ""} \
      ~{if (original_multifasta_file) then "-f" else ""} \
      ~{if (min_snps_identifying) then "-m" else ""} \
      ~{if (min_window_size) then "-a" else ""} \
      ~{if (max_window_size) then "-b" else ""}
  >>>
  parameter_meta {
    newick_tree_file: "Newick tree file"
    vcf_file: "VCF file"
    original_multifasta_file: "Original Multifasta file"
    min_snps_identifying: "Min SNPs for identifying a recombination block"
    min_window_size: "Min window size"
    max_window_size: "Max window size"
    two_dot_four_dot_one: "-r    detect recombinations mode"
  }
  output {
    File out_stdout = stdout()
  }
}
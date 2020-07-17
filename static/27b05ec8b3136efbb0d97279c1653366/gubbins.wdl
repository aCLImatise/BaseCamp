version 1.0

task Gubbins {
  input {
    Boolean? detect_recombinations_mode
    Boolean? newick_tree_file
    Boolean? vcf_file
    Boolean? original_multifasta_file
    Boolean? min_snps_identifying
    Boolean? min_window_size
    Boolean? max_window_size
    String alignment_file
  }
  command <<<
    gubbins \
      ~{alignment_file} \
      ~{true="-r" false="" detect_recombinations_mode} \
      ~{true="-t" false="" newick_tree_file} \
      ~{true="-v" false="" vcf_file} \
      ~{true="-f" false="" original_multifasta_file} \
      ~{true="-m" false="" min_snps_identifying} \
      ~{true="-a" false="" min_window_size} \
      ~{true="-b" false="" max_window_size}
  >>>
  parameter_meta {
    detect_recombinations_mode: "detect recombinations mode"
    newick_tree_file: "Newick tree file"
    vcf_file: "VCF file"
    original_multifasta_file: "Original Multifasta file"
    min_snps_identifying: "Min SNPs for identifying a recombination block"
    min_window_size: "Min window size"
    max_window_size: "Max window size"
    alignment_file: ""
  }
}
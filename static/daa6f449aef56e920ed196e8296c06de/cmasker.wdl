version 1.0

task Cmasker {
  input {
    Boolean? fasta_input
    Boolean? jellfish_database
    Boolean? create_occ_output
    Boolean? normalize_value
    Boolean? rt_value_masking
    Boolean? strict_mode_mask
    Boolean? prefix_for_outfiles
    Boolean? suppress_fasta_output
  }
  command <<<
    cmasker \
      ~{true="-f" false="" fasta_input} \
      ~{true="-j" false="" jellfish_database} \
      ~{true="-o" false="" create_occ_output} \
      ~{true="-n" false="" normalize_value} \
      ~{true="-r" false="" rt_value_masking} \
      ~{true="-t" false="" strict_mode_mask} \
      ~{true="-p" false="" prefix_for_outfiles} \
      ~{true="-s" false="" suppress_fasta_output}
  >>>
  parameter_meta {
    fasta_input: "FASTA Input"
    jellfish_database: "Jellfish Database"
    create_occ_output: "Create OCC output"
    normalize_value: "Normalize Value"
    rt_value_masking: "RT Value for masking threshold"
    strict_mode_mask: "Strict mode: Mask the whole k-mer in the query sequence instead of the single nucleotide"
    prefix_for_outfiles: "Prefix for the outfiles"
    suppress_fasta_output: "Suppress FASTA output"
  }
}
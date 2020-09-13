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
    String c_masker
  }
  command <<<
    cmasker \
      ~{c_masker} \
      ~{if (fasta_input) then "-f" else ""} \
      ~{if (jellfish_database) then "-j" else ""} \
      ~{if (create_occ_output) then "-o" else ""} \
      ~{if (normalize_value) then "-n" else ""} \
      ~{if (rt_value_masking) then "-r" else ""} \
      ~{if (strict_mode_mask) then "-t" else ""} \
      ~{if (prefix_for_outfiles) then "-p" else ""} \
      ~{if (suppress_fasta_output) then "-s" else ""}
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
    c_masker: "-h      Shows this help"
  }
  output {
    File out_stdout = stdout()
  }
}
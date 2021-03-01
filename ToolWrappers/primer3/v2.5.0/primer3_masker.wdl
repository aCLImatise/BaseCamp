version 1.0

task Primer3Masker {
  input {
    Boolean? km_er_lists_path
    Boolean? list_prefix
    Boolean? absolute_value_cut_off
    Boolean? list
    Boolean? mask_five_p
    Boolean? mask_three_p
    Boolean? masking_char
    Boolean? soft_mask
    Boolean? masking_direction
  }
  command <<<
    primer3_masker \
      ~{if (km_er_lists_path) then "--kmer_lists_path" else ""} \
      ~{if (list_prefix) then "--list_prefix" else ""} \
      ~{if (absolute_value_cut_off) then "--absolute_value_cutoff" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (mask_five_p) then "--mask_5p" else ""} \
      ~{if (mask_three_p) then "--mask_3p" else ""} \
      ~{if (masking_char) then "--masking_char" else ""} \
      ~{if (soft_mask) then "--soft_mask" else ""} \
      ~{if (masking_direction) then "--masking_direction" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er_lists_path: "- path to the kmer list files (default: ../kmer_lists/)"
    list_prefix: "- prefix of the k-mer lists to use with default model (default: homo_sapiens)"
    absolute_value_cut_off: "- masking cutoff based on k-mer count; requires a single list name, defined with -l"
    list: "- define a single k-mer list for masking with absolute cutoff option -a"
    mask_five_p: "- nucleotides to mask in 5' direction (default: 1)"
    mask_three_p: "- nucleotides to mask in 3' direction (default: 0)"
    masking_char: "- character used for masking (default: N)"
    soft_mask: "- use soft masking (default: false)"
    masking_direction: "- a strand to mask (fwd, rev, both) (default: both)"
  }
  output {
    File out_stdout = stdout()
  }
}
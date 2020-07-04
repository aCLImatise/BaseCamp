version 1.0

task Primer3Masker {
  input {
    Boolean? probability_cut_off
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
      ~{true="--probability_cutoff" false="" probability_cut_off} \
      ~{true="--kmer_lists_path" false="" km_er_lists_path} \
      ~{true="--list_prefix" false="" list_prefix} \
      ~{true="--absolute_value_cutoff" false="" absolute_value_cut_off} \
      ~{true="--list" false="" list} \
      ~{true="--mask_5p" false="" mask_five_p} \
      ~{true="--mask_3p" false="" mask_three_p} \
      ~{true="--masking_char" false="" masking_char} \
      ~{true="--soft_mask" false="" soft_mask} \
      ~{true="--masking_direction" false="" masking_direction}
  >>>
  parameter_meta {
    probability_cut_off: "- masking cutoff [0, 1] (default: >=0.1)"
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
}
version 1.0

task Phasedstacks {
  input {
    Boolean? skip_zeros
    Boolean? minor_allele_freq
    Boolean? min_inform_pairs
  }
  command <<<
    phasedstacks \
      ~{true="--skip-zeros" false="" skip_zeros} \
      ~{true="--minor-allele-freq" false="" minor_allele_freq} \
      ~{true="--min-inform-pairs" false="" min_inform_pairs}
  >>>
  parameter_meta {
    skip_zeros: ": do not include D' values of zero in the D' output."
    minor_allele_freq: ": specify a minimum minor allele frequency required to process a nucleotide site (0 < a < 0.5)."
    min_inform_pairs: ": when building D' haplotype blocks, the minimum number of informative D' measures to combine two blocks (default 0.9)."
  }
}
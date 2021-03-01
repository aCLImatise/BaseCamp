version 1.0

task Phasedstacks {
  input {
    Boolean? haplotypes
    Boolean? d_prime_bin_size
    Int? d_prime_threshold
    Boolean? skip_zeros
    Boolean? minor_allele_freq
    Boolean? min_inform_pairs
  }
  command <<<
    phasedstacks \
      ~{if (haplotypes) then "--haplotypes" else ""} \
      ~{if (d_prime_bin_size) then "--dprime-bin-size" else ""} \
      ~{if defined(d_prime_threshold) then ("--dprime-threshold " +  '"' + d_prime_threshold + '"') else ""} \
      ~{if (skip_zeros) then "--skip-zeros" else ""} \
      ~{if (minor_allele_freq) then "--minor-allele-freq" else ""} \
      ~{if (min_inform_pairs) then "--min-inform-pairs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    haplotypes: ": data were phased as RAD locus haplotypes."
    d_prime_bin_size: ": size of buckets for binning SNPs at a particular distance to calculate the mean D' value."
    d_prime_threshold: ": if D' values fall above <val>, set the D' to 1, otherwise set D' to 0."
    skip_zeros: ": do not include D' values of zero in the D' output."
    minor_allele_freq: ": specify a minimum minor allele frequency required to process a nucleotide site (0 < a < 0.5)."
    min_inform_pairs: ": when building D' haplotype blocks, the minimum number of informative D' measures to combine two blocks (default 0.9)."
  }
  output {
    File out_stdout = stdout()
  }
}
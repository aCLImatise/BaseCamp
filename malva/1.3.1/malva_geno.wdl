version 1.0

task MalvaGeno {
  input {
    Boolean? km_er_size
    Boolean? ref_km_er_size
    Boolean? error_rate
    Boolean? samples
    Boolean? freq_key
    Boolean? max_coverage
    Boolean? bf_size
    Boolean? strip_chr
    Boolean? uniform
    Boolean? verbose
    Boolean? haploid
    String reference_dot_fa
    String variants_dot_vcf
    String kmc_output_prefix
  }
  command <<<
    malva-geno \
      ~{reference_dot_fa} \
      ~{variants_dot_vcf} \
      ~{kmc_output_prefix} \
      ~{true="--kmer-size" false="" km_er_size} \
      ~{true="--ref-kmer-size" false="" ref_km_er_size} \
      ~{true="--error-rate" false="" error_rate} \
      ~{true="--samples" false="" samples} \
      ~{true="--freq-key" false="" freq_key} \
      ~{true="--max-coverage" false="" max_coverage} \
      ~{true="--bf-size" false="" bf_size} \
      ~{true="--strip-chr" false="" strip_chr} \
      ~{true="--uniform" false="" uniform} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--haploid" false="" haploid}
  >>>
  parameter_meta {
    km_er_size: "size of the kmers to index (default:35)"
    ref_km_er_size: "size of the reference kmers to index (default:43)"
    error_rate: "expected sample error rate (default:0.001)"
    samples: "file containing the list of (VCF) samples to consider (default:-, i.e. all samples)"
    freq_key: "a priori frequency key in the INFO column of the input VCF (default:AF)"
    max_coverage: "maximum coverage for variant alleles (default:200)"
    bf_size: "bloom filter size in GB (default:4)"
    strip_chr: "strip \"chr\" from sequence names (default:false)"
    uniform: "use uniform a priori probabilities (default:false)"
    verbose: "output COVS and GTS in INFO column (default: false)"
    haploid: "run MALVA in haploid mode (default: false)"
    reference_dot_fa: ""
    variants_dot_vcf: ""
    kmc_output_prefix: ""
  }
}
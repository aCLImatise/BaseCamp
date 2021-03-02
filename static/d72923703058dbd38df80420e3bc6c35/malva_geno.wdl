version 1.0

task Malvageno {
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
    malva_geno \
      ~{reference_dot_fa} \
      ~{variants_dot_vcf} \
      ~{kmc_output_prefix} \
      ~{if (km_er_size) then "--kmer-size" else ""} \
      ~{if (ref_km_er_size) then "--ref-kmer-size" else ""} \
      ~{if (error_rate) then "--error-rate" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (freq_key) then "--freq-key" else ""} \
      ~{if (max_coverage) then "--max-coverage" else ""} \
      ~{if (bf_size) then "--bf-size" else ""} \
      ~{if (strip_chr) then "--strip-chr" else ""} \
      ~{if (uniform) then "--uniform" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (haploid) then "--haploid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er_size: "size of the kmers to index (default:35)"
    ref_km_er_size: "size of the reference kmers to index (default:43)"
    error_rate: "expected sample error rate (default:0.001)"
    samples: "file containing the list of (VCF) samples to consider (default:-, i.e. all samples)"
    freq_key: "a priori frequency key in the INFO column of the input VCF (default:AF)"
    max_coverage: "maximum coverage for variant alleles (default:200)"
    bf_size: "bloom filter size in GB (default:4)"
    strip_chr: "strip \\\"chr\\\" from sequence names (default:false)"
    uniform: "use uniform a priori probabilities (default:false)"
    verbose: "output COVS and GTS in INFO column (default: false)"
    haploid: "run MALVA in haploid mode (default: false)"
    reference_dot_fa: ""
    variants_dot_vcf: ""
    kmc_output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}
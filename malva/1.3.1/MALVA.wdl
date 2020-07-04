version 1.0

task MALVA {
  input {
    Boolean? size_kmers_index
    Boolean? size_reference_kmers
    Boolean? expected_sample_default
    Boolean? file_containing_list
    Boolean? frequency_key_info
    Boolean? maximum_coverage_variant
    Boolean? bloom_filter_size
    Boolean? max_amount_default
    Boolean? strip_sequence_names
    Boolean? use_uniform_probabilities
    Boolean? output_covs_gts
    Boolean? run_malva_false
    String reference
    String variants
    String sample
  }
  command <<<
    MALVA \
      ~{reference} \
      ~{variants} \
      ~{sample} \
      ~{true="-k" false="" size_kmers_index} \
      ~{true="-r" false="" size_reference_kmers} \
      ~{true="-e" false="" expected_sample_default} \
      ~{true="-s" false="" file_containing_list} \
      ~{true="-f" false="" frequency_key_info} \
      ~{true="-c" false="" maximum_coverage_variant} \
      ~{true="-b" false="" bloom_filter_size} \
      ~{true="-m" false="" max_amount_default} \
      ~{true="-p" false="" strip_sequence_names} \
      ~{true="-u" false="" use_uniform_probabilities} \
      ~{true="-v" false="" output_covs_gts} \
      ~{true="-1" false="" run_malva_false}
  >>>
  parameter_meta {
    size_kmers_index: "size of the kmers to index (default:35)"
    size_reference_kmers: "size of the reference kmers to index (default:43)"
    expected_sample_default: "expected sample error rate (default:0.001)"
    file_containing_list: "file containing the list of (VCF) samples to consider (default:-, i.e. all samples)"
    frequency_key_info: "a priori frequency key in the INFO column of the input VCF (default:AF)"
    maximum_coverage_variant: "maximum coverage for variant alleles (default:200)"
    bloom_filter_size: "bloom filter size in GB (default:4)"
    max_amount_default: "max amount of RAM in GB - KMC parameter (default:4)"
    strip_sequence_names: "strip \\"chr\\" from sequence names (dafault:false)"
    use_uniform_probabilities: "use uniform a priori probabilities (default:false)"
    output_covs_gts: "output COVS and GTS in INFO column (default: false)"
    run_malva_false: "run MALVA in haploid mode (default: false)"
    reference: ""
    variants: ""
    sample: ""
  }
}
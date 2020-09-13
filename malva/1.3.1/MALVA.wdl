version 1.0

task MALVA {
  input {
    Boolean? size_kmers_index
    Boolean? size_reference_kmers
    Boolean? expected_sample_error
    Boolean? file_containing_list
    Boolean? priori_frequency_key
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
      ~{if (size_kmers_index) then "-k" else ""} \
      ~{if (size_reference_kmers) then "-r" else ""} \
      ~{if (expected_sample_error) then "-e" else ""} \
      ~{if (file_containing_list) then "-s" else ""} \
      ~{if (priori_frequency_key) then "-f" else ""} \
      ~{if (maximum_coverage_variant) then "-c" else ""} \
      ~{if (bloom_filter_size) then "-b" else ""} \
      ~{if (max_amount_default) then "-m" else ""} \
      ~{if (strip_sequence_names) then "-p" else ""} \
      ~{if (use_uniform_probabilities) then "-u" else ""} \
      ~{if (output_covs_gts) then "-v" else ""} \
      ~{if (run_malva_false) then "-1" else ""}
  >>>
  parameter_meta {
    size_kmers_index: "size of the kmers to index (default:35)"
    size_reference_kmers: "size of the reference kmers to index (default:43)"
    expected_sample_error: "expected sample error rate (default:0.001)"
    file_containing_list: "file containing the list of (VCF) samples to consider (default:-, i.e. all samples)"
    priori_frequency_key: "a priori frequency key in the INFO column of the input VCF (default:AF)"
    maximum_coverage_variant: "maximum coverage for variant alleles (default:200)"
    bloom_filter_size: "bloom filter size in GB (default:4)"
    max_amount_default: "max amount of RAM in GB - KMC parameter (default:4)"
    strip_sequence_names: "strip \\\\\"chr\\\\\" from sequence names (dafault:false)"
    use_uniform_probabilities: "use uniform a priori probabilities (default:false)"
    output_covs_gts: "output COVS and GTS in INFO column (default: false)"
    run_malva_false: "run MALVA in haploid mode (default: false)"
    reference: ""
    variants: ""
    sample: ""
  }
  output {
    File out_stdout = stdout()
  }
}
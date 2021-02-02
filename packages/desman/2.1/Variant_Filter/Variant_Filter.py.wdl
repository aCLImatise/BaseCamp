version 1.0

task VariantFilterpy {
  input {
    Boolean? binomial_loge_likelihood
    Boolean? specifies_q_value
    Boolean? specifies_minimum_defaults
    Int? min_coverage
    Float? outlier_thresh
    String? sample_frac
    File? output_stub
    Boolean? optimise_p
    Int? random_seed
    String c__cogfilter
  }
  command <<<
    Variant_Filter_py \
      ~{c__cogfilter} \
      ~{if (binomial_loge_likelihood) then "-f" else ""} \
      ~{if (specifies_q_value) then "-q" else ""} \
      ~{if (specifies_minimum_defaults) then "-v" else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(outlier_thresh) then ("--outlier_thresh " +  '"' + outlier_thresh + '"') else ""} \
      ~{if defined(sample_frac) then ("--sample_frac " +  '"' + sample_frac + '"') else ""} \
      ~{if defined(output_stub) then ("--output_stub " +  '"' + output_stub + '"') else ""} \
      ~{if (optimise_p) then "--optimiseP" else ""} \
      ~{if defined(random_seed) then ("--random_seed " +  '"' + random_seed + '"') else ""}
  >>>
  parameter_meta {
    binomial_loge_likelihood: "[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS]\\nbinomial loge likelihood species p-value threshold for\\ninitial filtering as chi2"
    specifies_q_value: "[MAX_QVALUE], --max_qvalue [MAX_QVALUE]\\nspecifies q value cut-off for variant defaults 1.0e-3"
    specifies_minimum_defaults: "[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ]\\nspecifies minimum variant frequency defaults 0.01"
    min_coverage: "minimum coverage for sample to be included defaults\\n5.0"
    outlier_thresh: "threshold for COG filtering on median coverage outlier\\ndefaults to 2.0"
    sample_frac: "fraction of samples with COG coverage exceeding median\\noutlier for removal"
    output_stub: "string specifying file stubs"
    optimise_p: "optimise proportions in likelihood ratio test default"
    random_seed: "specifies seed for numpy random number generator\\ndefaults to 23724839\\n"
    c__cogfilter: "-c, --cog_filter      whether to apply COG filtering default false"
  }
  output {
    File out_stdout = stdout()
  }
}
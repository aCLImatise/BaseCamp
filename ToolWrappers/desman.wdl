version 1.0

task Desman {
  input {
    Int? genomes
    Boolean? filters_variants_negative
    Boolean? selects_subset_variants
    File? eta_file
    File? assign_file
    File? output_dir
    String? optimise_p
    Boolean? number_iterations_gibbs
    Int? min_coverage
    Float? max_q_value
    Int? random_seed
    Boolean? specifies_minimum_defaults
    String? filter_variants
    String? random_select
  }
  command <<<
    desman \
      ~{filter_variants} \
      ~{random_select} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if (filters_variants_negative) then "-f" else ""} \
      ~{if (selects_subset_variants) then "-r" else ""} \
      ~{if defined(eta_file) then ("--eta_file " +  '"' + eta_file + '"') else ""} \
      ~{if defined(assign_file) then ("--assign_file " +  '"' + assign_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(optimise_p) then ("--optimiseP " +  '"' + optimise_p + '"') else ""} \
      ~{if (number_iterations_gibbs) then "-i" else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_q_value) then ("--max_qvalue " +  '"' + max_q_value + '"') else ""} \
      ~{if defined(random_seed) then ("--random_seed " +  '"' + random_seed + '"') else ""} \
      ~{if (specifies_minimum_defaults) then "-v" else ""}
  >>>
  parameter_meta {
    genomes: "specify the haplotype number"
    filters_variants_negative: "[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS]\\nfilters variants by negative binomial loge likelihood\\ndefaults to 3.84"
    selects_subset_variants: "[RANDOM_SELECT], --random_select [RANDOM_SELECT]\\nselects subset of variants passing filter to build\\nmodel and assigns others"
    eta_file: "reads initial eta matrix from file"
    assign_file: "calculates haplotype profiles for these SNPs using\\nfitted gamma, eta values"
    output_dir: "string specifying output directory and file stubs"
    optimise_p: "optimise proportions in likelihood ratio test"
    number_iterations_gibbs: "[NO_ITER], --no_iter [NO_ITER]\\nNumber of iterations of Gibbs sampler"
    min_coverage: "minimum coverage for sample to be included"
    max_q_value: "specifies q value cut-off for variant detection\\ndefaults 1.0e-3"
    random_seed: "specifies seed for numpy random number generator\\ndefaults to 23724839 applied after random filtering"
    specifies_minimum_defaults: "[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ]\\nspecifies minimum variant frequency defaults 0.01\\n"
    filter_variants: ""
    random_select: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}
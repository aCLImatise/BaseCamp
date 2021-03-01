version 1.0

task Entropy {
  input {
    File? genetic_data_population
    Int? level_individuals_single
    File? genotype_likelihood_format
    Int? mcmc_steps_analysis
    Int? first_mcmc_samples
    Int? mcmc_samples_recording
    Int? of_population_clusters
    Int? format_outfile_suffix
    File? expected_starting_values
    Int? intra__ancestry
    Int? includes_allele_frequencies
    Int? sequence_error_set
    Int? dirichlet_init_q
    Boolean? proposal_ancestral_allele
    Boolean? _proposal_fst
    Boolean? _proposal_gamma
    Boolean? _proposal_alpha
    Int? seed_random_number
  }
  command <<<
    entropy \
      ~{if defined(genetic_data_population) then ("-i " +  '"' + genetic_data_population + '"') else ""} \
      ~{if defined(level_individuals_single) then ("-n " +  '"' + level_individuals_single + '"') else ""} \
      ~{if defined(genotype_likelihood_format) then ("-m " +  '"' + genotype_likelihood_format + '"') else ""} \
      ~{if defined(mcmc_steps_analysis) then ("-l " +  '"' + mcmc_steps_analysis + '"') else ""} \
      ~{if defined(first_mcmc_samples) then ("-b " +  '"' + first_mcmc_samples + '"') else ""} \
      ~{if defined(mcmc_samples_recording) then ("-t " +  '"' + mcmc_samples_recording + '"') else ""} \
      ~{if defined(of_population_clusters) then ("-k " +  '"' + of_population_clusters + '"') else ""} \
      ~{if defined(format_outfile_suffix) then ("-o " +  '"' + format_outfile_suffix + '"') else ""} \
      ~{if defined(expected_starting_values) then ("-q " +  '"' + expected_starting_values + '"') else ""} \
      ~{if defined(intra__ancestry) then ("-Q " +  '"' + intra__ancestry + '"') else ""} \
      ~{if defined(includes_allele_frequencies) then ("-w " +  '"' + includes_allele_frequencies + '"') else ""} \
      ~{if defined(sequence_error_set) then ("-e " +  '"' + sequence_error_set + '"') else ""} \
      ~{if defined(dirichlet_init_q) then ("-s " +  '"' + dirichlet_init_q + '"') else ""} \
      ~{if (proposal_ancestral_allele) then "-p" else ""} \
      ~{if (_proposal_fst) then "-f" else ""} \
      ~{if (_proposal_gamma) then "-y" else ""} \
      ~{if (_proposal_alpha) then "-a" else ""} \
      ~{if defined(seed_random_number) then ("-r " +  '"' + seed_random_number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genetic_data_population: "with genetic data for the population (.mpgl)"
    level_individuals_single: "level for individuals (1, 2, 3, 4, 6)\\n(a single number indicating same ploidy for all individuals"
    genotype_likelihood_format: "is in genotype likelihood format [default = 1]"
    mcmc_steps_analysis: "of MCMC steps for the analysis [default = 10000]"
    first_mcmc_samples: "the first n MCMC samples as a burn-in [default = 1000]"
    mcmc_samples_recording: "MCMC samples by recording every nth value [default = 1]"
    of_population_clusters: "of population clusters [default = 2]"
    format_outfile_suffix: "format outfile with .hdf5 suffix [default = mcmcout.hdf5]"
    expected_starting_values: "with expected starting values for admixture proportions"
    intra__ancestry: "intra- and interspecific ancestry and marginal q [default = 0]"
    includes_allele_frequencies: "includes population allele frequencies [default = 0]"
    sequence_error_set: "of sequence error, set to '9' for locus-specific error rates [default = 0] (only required if infile is not in genotype likelihood format)"
    dirichlet_init_q: "for Dirichlet init. of q, inversly prop. to variance [default = 1]"
    proposal_ancestral_allele: "+/- proposal for ancestral allele frequency [default = 0.1]"
    _proposal_fst: "+/- proposal for Fst [default = 0.01]"
    _proposal_gamma: "+/- proposal for gamma [default = 0.2]"
    _proposal_alpha: "+/- proposal for alpha [default = 0.1]"
    seed_random_number: "seed for random number generator [default = clock]"
  }
  output {
    File out_stdout = stdout()
  }
}
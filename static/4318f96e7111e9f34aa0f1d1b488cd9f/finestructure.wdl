version 1.0

task Finestructure {
  input {
    String? method_use_omcmcmethod
    Int? initial_number_populations
    Int? sets_rng_seed
    File? ignores_first_lines
    Int? number_burn_iterations
    Int? number_sample_iterations
    File? thin_interval_output
    Int? maximum_number_tree
    Boolean? fix_number_populations
    File? specify_length_datafile
    Int? use_inference_method
    Int? set_alpha_prior
    Int? set_likelihood_factor
    Int? choose_model_betaee
    Int? num_hyperparameters_models
    Int? specify_type_be
    File? extract_details_state
    File? fix_populations_specified
    Int? when_using_initialisation
    File? file_containing_state
    Int? change_building_algorithm
    Boolean? specifies_there_are_row_names
    Boolean? specifies_there_are_column_names
    Boolean? verbose_mode
    Boolean? print_version_info
  }
  command <<<
    finestructure \
      ~{if defined(method_use_omcmcmethod) then ("-m " +  '"' + method_use_omcmcmethod + '"') else ""} \
      ~{if defined(initial_number_populations) then ("-I " +  '"' + initial_number_populations + '"') else ""} \
      ~{if defined(sets_rng_seed) then ("-s " +  '"' + sets_rng_seed + '"') else ""} \
      ~{if defined(ignores_first_lines) then ("-i " +  '"' + ignores_first_lines + '"') else ""} \
      ~{if defined(number_burn_iterations) then ("-x " +  '"' + number_burn_iterations + '"') else ""} \
      ~{if defined(number_sample_iterations) then ("-y " +  '"' + number_sample_iterations + '"') else ""} \
      ~{if defined(thin_interval_output) then ("-z " +  '"' + thin_interval_output + '"') else ""} \
      ~{if defined(maximum_number_tree) then ("-t " +  '"' + maximum_number_tree + '"') else ""} \
      ~{if (fix_number_populations) then "-K" else ""} \
      ~{if defined(specify_length_datafile) then ("-l " +  '"' + specify_length_datafile + '"') else ""} \
      ~{if defined(use_inference_method) then ("-u " +  '"' + use_inference_method + '"') else ""} \
      ~{if defined(set_alpha_prior) then ("-a " +  '"' + set_alpha_prior + '"') else ""} \
      ~{if defined(set_likelihood_factor) then ("-c " +  '"' + set_likelihood_factor + '"') else ""} \
      ~{if defined(choose_model_betaee) then ("-B " +  '"' + choose_model_betaee + '"') else ""} \
      ~{if defined(num_hyperparameters_models) then ("-b " +  '"' + num_hyperparameters_models + '"') else ""} \
      ~{if defined(specify_type_be) then ("-M " +  '"' + specify_type_be + '"') else ""} \
      ~{if defined(extract_details_state) then ("-e " +  '"' + extract_details_state + '"') else ""} \
      ~{if defined(fix_populations_specified) then ("-F " +  '"' + fix_populations_specified + '"') else ""} \
      ~{if defined(when_using_initialisation) then ("-T " +  '"' + when_using_initialisation + '"') else ""} \
      ~{if defined(file_containing_state) then ("-o " +  '"' + file_containing_state + '"') else ""} \
      ~{if defined(change_building_algorithm) then ("-k " +  '"' + change_building_algorithm + '"') else ""} \
      ~{if (specifies_there_are_row_names) then "-X" else ""} \
      ~{if (specifies_there_are_column_names) then "-Y" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (print_version_info) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    method_use_omcmcmethod: "Method to use.  Default: oMCMC.\\n<method> is either MCMCwithTree, oMCMC (MCMC without tree),\\nSplitMerge, Tree, or admixture, or a contraction of any.\\nNote that admixture does not infer the population\\nso should be provided with a good one in \\\"initialpopfile\\\"."
    initial_number_populations: "Initial number of populations.  <x> is either a number\\nor \\\"n\\\" for the number of individuals, or \\\"l\\\" for label detected\\npopulations.  Default is 1."
    sets_rng_seed: "Sets the RNG seed to s (>0)"
    ignores_first_lines: "Ignores the first i lines of the input file"
    number_burn_iterations: "Number of burn in iterations for MCMC method."
    number_sample_iterations: "Number of sample iterations for MCMC method."
    thin_interval_output: "Thin interval in the output file, for MCMC method."
    maximum_number_tree: "Maximum number of tree comparisons for splitting/merging."
    fix_number_populations: "Fix the number of populations to whatever you started with.\\nThis would be set by '-I' or by an initial state file."
    specify_length_datafile: "Specify the average copy length datafile.  -i,-X,-Y options\\n*preciding* this file will affect this read; you can set different\\noptions for the copy rate datafile by specifying these -i,-X,-Y again\\nafter the -l option."
    use_inference_method: "Use a data inference method; one of :\\ncounts: use only the copy counts data. (default if -l not specified)\\nlengths: use only the copy length data (still needs valid counts data!)\\ntotallengths: use the mean length of chunk sizes\\nall: use all data (careful: this may not be statistically valid).\\ndefault: use counts and totallengths (default with -l specified)."
    set_alpha_prior: "Set alpha, the prior of the number of parameters\\n(default: 1.0)."
    set_likelihood_factor: "Set the likelihood correction factor: L_{used}=L^{1/<corfactor>}.\\n(default: 1.0)"
    choose_model_betaee: "Choose a model for beta:\\n1/e/E:  Equipartition model of Pella and Masuda.\\n2/c/C:  Constant model.\\n4/o/O:  F model of Falush et al 2003 with a single parameter\\nfor all populations (default)."
    num_hyperparameters_models: "(,<num>,..) Hyperparameters for ALL models, in the order COUNTS,LENGTHS,MEANS.\\nCOUNTS: *must* be included, even if count matrix not used!\\nFor model 1, there are no parameters.\\nFor model 2, set the prior of the distribution of\\npopulation sizes (each population has beta_i=<num>).\\n(default: 1.0).\\nFor model 4, set the hyperprior of the distribution of\\ndelta and F. Parameters are\\n(k_f,k_delta,theta_f,theta_delta) for the parameters of the\\ngamma distribution F~Gamma(k_f,theta_f),\\nand delta~Gamma(k_delta,theta_delta)\\n(default: -b 2,2,0.01,0.01).\\nLENGTHS: 8 parameters:\\n(k_alpha0,k_beta0,k_alpha,k_beta,beta_alpha0,beta_beta0,beta_alpha,beta_beta)\\nMEANS: 6 parameters:\\n(k_betamu, k_alphamu, k_kappa, beta_alphamu,beta_betamu,beta_kappa)\\nSet K parameters negative for fixed =|k|\\ne.g. when finding a tree given the mean parameters."
    specify_type_be: "Specify the type of inference model for chunk counts.\\n<modeltype> accept contractions and lower case, and can be:\\n1 or Finestructure: standard finestructure model (default).\\n2 or Normalised: Normalise data row and columns within a population.\\n3 or MergeOnly: As 2, but only compare populations being merged or split.\\n4 or Individual: Prior is placed on individual rows instead of\\npopulation rows. (slowest model)."
    extract_details_state: "Extract details from a state; can be (a unique contraction of):\\nbeta: the parameter matrix\\nX: the copying data matrix for populations\\nX2: the normalised copying matrix\\nmaxstate: maximum observed posterior probability state\\nmeancoincidence: the mean coincidence matrix\\nmerge<:value><:split>: create a merge(or split)\\npopulation from the mean coincidence.\\nadmixture: gets the population as an admixture matrix.\\nPmatrix: gets the P matrix for the admixture.\\nrange:<from>:<to> gets the iterations in the specified range.\\nthin:<step>: thins the output by step.\\nprobability: get the posterior probability of the data\\ngiven the conditions of the outputfile.\\nlikelihood: samples the likelihood of the data given the conditions\\nin the outputfile.\\ntree: extract the tree in newick format and print it to a FOURTH file"
    fix_populations_specified: "Fix the populations specified in the file.  They should be specified as\\npopulation format, i.e. PopA(ind1,ind2) would fix the data rows ind1 and ind2\\nto always be in the same population (they form a 'super individual')\\ncalled PopA. Continents are specified with a * before the name, and are treated\\nspecially in the tree building phase,  i.e. *ContA(ind1,ind2).  Continents\\nare not merged with the rest of the tree."
    when_using_initialisation: "When using a merge tree, initialisation can be set to the following:\\n1:      Use the initial state \\\"as is\\\".\\n2:      Perform merging to get to best posterior state.\\n3:      Perform full range of moves to to get to best posterior state.\\nThis is the default.  Set number of attempts with -x <num>.\\n4:      As 1, but don't flatten maximum copy rates for the main tree.\\n5:      As 2, but don't flatten maximum copy rates for the main tree.\\n6:      As 3, but don't flatten maximum copy rates for the main tree.\\n7:      As 1, but maximise hyperparameters between merges.\\n8:      As 2, but maximise hyperparameters between merges.\\n9:      As 3, but maximise hyperparameters between merges."
    file_containing_state: "File containing a state to use for ordering, if not the main file."
    change_building_algorithm: "Change the tree building algorithm.\\n0:      Discard all ordering and likelihood information (default).\\n1:      Maintain ordering.\\n2:      Maintain ordering and likelihood."
    specifies_there_are_row_names: "Specifies that there are row names in the data (not necessary for\\nChromoPainter or ChromoCombine style files.)"
    specifies_there_are_column_names: "Specifies that there are column names in the data file (as -X, not necessary.)"
    verbose_mode: "Verbose mode"
    print_version_info: "Print Version info"
  }
  output {
    File out_stdout = stdout()
    File out_thin_interval_output = "${in_thin_interval_output}"
    File out_extract_details_state = "${in_extract_details_state}"
  }
}
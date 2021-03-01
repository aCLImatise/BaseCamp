class: CommandLineTool
id: finestructure.cwl
inputs:
- id: in_method_use_omcmcmethod
  doc: "Method to use.  Default: oMCMC.\n<method> is either MCMCwithTree, oMCMC (MCMC\
    \ without tree),\nSplitMerge, Tree, or admixture, or a contraction of any.\nNote\
    \ that admixture does not infer the population\nso should be provided with a good\
    \ one in \"initialpopfile\"."
  type: string?
  inputBinding:
    prefix: -m
- id: in_initial_number_populations
  doc: "Initial number of populations.  <x> is either a number\nor \"n\" for the number\
    \ of individuals, or \"l\" for label detected\npopulations.  Default is 1."
  type: long?
  inputBinding:
    prefix: -I
- id: in_sets_rng_seed
  doc: Sets the RNG seed to s (>0)
  type: long?
  inputBinding:
    prefix: -s
- id: in_ignores_first_lines
  doc: Ignores the first i lines of the input file
  type: File?
  inputBinding:
    prefix: -i
- id: in_number_burn_iterations
  doc: Number of burn in iterations for MCMC method.
  type: long?
  inputBinding:
    prefix: -x
- id: in_number_sample_iterations
  doc: Number of sample iterations for MCMC method.
  type: long?
  inputBinding:
    prefix: -y
- id: in_thin_interval_output
  doc: Thin interval in the output file, for MCMC method.
  type: File?
  inputBinding:
    prefix: -z
- id: in_maximum_number_tree
  doc: Maximum number of tree comparisons for splitting/merging.
  type: long?
  inputBinding:
    prefix: -t
- id: in_fix_number_populations
  doc: "Fix the number of populations to whatever you started with.\nThis would be\
    \ set by '-I' or by an initial state file."
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_specify_length_datafile
  doc: "Specify the average copy length datafile.  -i,-X,-Y options\n*preciding* this\
    \ file will affect this read; you can set different\noptions for the copy rate\
    \ datafile by specifying these -i,-X,-Y again\nafter the -l option."
  type: File?
  inputBinding:
    prefix: -l
- id: in_use_inference_method
  doc: "Use a data inference method; one of :\ncounts: use only the copy counts data.\
    \ (default if -l not specified)\nlengths: use only the copy length data (still\
    \ needs valid counts data!)\ntotallengths: use the mean length of chunk sizes\n\
    all: use all data (careful: this may not be statistically valid).\ndefault: use\
    \ counts and totallengths (default with -l specified)."
  type: long?
  inputBinding:
    prefix: -u
- id: in_set_alpha_prior
  doc: "Set alpha, the prior of the number of parameters\n(default: 1.0)."
  type: long?
  inputBinding:
    prefix: -a
- id: in_set_likelihood_factor
  doc: "Set the likelihood correction factor: L_{used}=L^{1/<corfactor>}.\n(default:\
    \ 1.0)"
  type: long?
  inputBinding:
    prefix: -c
- id: in_choose_model_betaee
  doc: "Choose a model for beta:\n1/e/E:  Equipartition model of Pella and Masuda.\n\
    2/c/C:  Constant model.\n4/o/O:  F model of Falush et al 2003 with a single parameter\n\
    for all populations (default)."
  type: long?
  inputBinding:
    prefix: -B
- id: in_num_hyperparameters_models
  doc: "(,<num>,..) Hyperparameters for ALL models, in the order COUNTS,LENGTHS,MEANS.\n\
    COUNTS: *must* be included, even if count matrix not used!\nFor model 1, there\
    \ are no parameters.\nFor model 2, set the prior of the distribution of\npopulation\
    \ sizes (each population has beta_i=<num>).\n(default: 1.0).\nFor model 4, set\
    \ the hyperprior of the distribution of\ndelta and F. Parameters are\n(k_f,k_delta,theta_f,theta_delta)\
    \ for the parameters of the\ngamma distribution F~Gamma(k_f,theta_f),\nand delta~Gamma(k_delta,theta_delta)\n\
    (default: -b 2,2,0.01,0.01).\nLENGTHS: 8 parameters:\n(k_alpha0,k_beta0,k_alpha,k_beta,beta_alpha0,beta_beta0,beta_alpha,beta_beta)\n\
    MEANS: 6 parameters:\n(k_betamu, k_alphamu, k_kappa, beta_alphamu,beta_betamu,beta_kappa)\n\
    Set K parameters negative for fixed =|k|\ne.g. when finding a tree given the mean\
    \ parameters."
  type: long?
  inputBinding:
    prefix: -b
- id: in_specify_type_be
  doc: "Specify the type of inference model for chunk counts.\n<modeltype> accept\
    \ contractions and lower case, and can be:\n1 or Finestructure: standard finestructure\
    \ model (default).\n2 or Normalised: Normalise data row and columns within a population.\n\
    3 or MergeOnly: As 2, but only compare populations being merged or split.\n4 or\
    \ Individual: Prior is placed on individual rows instead of\npopulation rows.\
    \ (slowest model)."
  type: long?
  inputBinding:
    prefix: -M
- id: in_extract_details_state
  doc: "Extract details from a state; can be (a unique contraction of):\nbeta: the\
    \ parameter matrix\nX: the copying data matrix for populations\nX2: the normalised\
    \ copying matrix\nmaxstate: maximum observed posterior probability state\nmeancoincidence:\
    \ the mean coincidence matrix\nmerge<:value><:split>: create a merge(or split)\n\
    population from the mean coincidence.\nadmixture: gets the population as an admixture\
    \ matrix.\nPmatrix: gets the P matrix for the admixture.\nrange:<from>:<to> gets\
    \ the iterations in the specified range.\nthin:<step>: thins the output by step.\n\
    probability: get the posterior probability of the data\ngiven the conditions of\
    \ the outputfile.\nlikelihood: samples the likelihood of the data given the conditions\n\
    in the outputfile.\ntree: extract the tree in newick format and print it to a\
    \ FOURTH file"
  type: File?
  inputBinding:
    prefix: -e
- id: in_fix_populations_specified
  doc: "Fix the populations specified in the file.  They should be specified as\n\
    population format, i.e. PopA(ind1,ind2) would fix the data rows ind1 and ind2\n\
    to always be in the same population (they form a 'super individual')\ncalled PopA.\
    \ Continents are specified with a * before the name, and are treated\nspecially\
    \ in the tree building phase,  i.e. *ContA(ind1,ind2).  Continents\nare not merged\
    \ with the rest of the tree."
  type: File?
  inputBinding:
    prefix: -F
- id: in_when_using_initialisation
  doc: "When using a merge tree, initialisation can be set to the following:\n1: \
    \     Use the initial state \"as is\".\n2:      Perform merging to get to best\
    \ posterior state.\n3:      Perform full range of moves to to get to best posterior\
    \ state.\nThis is the default.  Set number of attempts with -x <num>.\n4:    \
    \  As 1, but don't flatten maximum copy rates for the main tree.\n5:      As 2,\
    \ but don't flatten maximum copy rates for the main tree.\n6:      As 3, but don't\
    \ flatten maximum copy rates for the main tree.\n7:      As 1, but maximise hyperparameters\
    \ between merges.\n8:      As 2, but maximise hyperparameters between merges.\n\
    9:      As 3, but maximise hyperparameters between merges."
  type: long?
  inputBinding:
    prefix: -T
- id: in_file_containing_state
  doc: File containing a state to use for ordering, if not the main file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_change_building_algorithm
  doc: "Change the tree building algorithm.\n0:      Discard all ordering and likelihood\
    \ information (default).\n1:      Maintain ordering.\n2:      Maintain ordering\
    \ and likelihood."
  type: long?
  inputBinding:
    prefix: -k
- id: in_specifies_there_are_row_names
  doc: "Specifies that there are row names in the data (not necessary for\nChromoPainter\
    \ or ChromoCombine style files.)"
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_specifies_there_are_column_names
  doc: Specifies that there are column names in the data file (as -X, not necessary.)
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_version_info
  doc: Print Version info
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_thin_interval_output
  doc: Thin interval in the output file, for MCMC method.
  type: File?
  outputBinding:
    glob: $(inputs.in_thin_interval_output)
- id: out_extract_details_state
  doc: "Extract details from a state; can be (a unique contraction of):\nbeta: the\
    \ parameter matrix\nX: the copying data matrix for populations\nX2: the normalised\
    \ copying matrix\nmaxstate: maximum observed posterior probability state\nmeancoincidence:\
    \ the mean coincidence matrix\nmerge<:value><:split>: create a merge(or split)\n\
    population from the mean coincidence.\nadmixture: gets the population as an admixture\
    \ matrix.\nPmatrix: gets the P matrix for the admixture.\nrange:<from>:<to> gets\
    \ the iterations in the specified range.\nthin:<step>: thins the output by step.\n\
    probability: get the posterior probability of the data\ngiven the conditions of\
    \ the outputfile.\nlikelihood: samples the likelihood of the data given the conditions\n\
    in the outputfile.\ntree: extract the tree in newick format and print it to a\
    \ FOURTH file"
  type: File?
  outputBinding:
    glob: $(inputs.in_extract_details_state)
hints: []
cwlVersion: v1.1
baseCommand:
- finestructure

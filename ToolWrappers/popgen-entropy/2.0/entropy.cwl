class: CommandLineTool
id: entropy.cwl
inputs:
- id: in_genetic_data_population
  doc: with genetic data for the population (.mpgl)
  type: File
  inputBinding:
    prefix: -i
- id: in_level_single_number
  doc: "level for individuals (1, 2, 3, 4, 6)\n(a single number indicating same ploidy\
    \ for all individuals"
  type: long
  inputBinding:
    prefix: -n
- id: in_genotype_likelihood_format
  doc: is in genotype likelihood format [default = 1]
  type: File
  inputBinding:
    prefix: -m
- id: in_mcmc_steps_analysis
  doc: of MCMC steps for the analysis [default = 10000]
  type: long
  inputBinding:
    prefix: -l
- id: in_first_mcmc_samples
  doc: the first n MCMC samples as a burn-in [default = 1000]
  type: long
  inputBinding:
    prefix: -b
- id: in_mcmc_samples_recording
  doc: MCMC samples by recording every nth value [default = 1]
  type: long
  inputBinding:
    prefix: -t
- id: in_of_population_clusters
  doc: of population clusters [default = 2]
  type: long
  inputBinding:
    prefix: -k
- id: in_format_outfile_suffix
  doc: format outfile with .hdf5 suffix [default = mcmcout.hdf5]
  type: long
  inputBinding:
    prefix: -o
- id: in_expected_starting_values
  doc: with expected starting values for admixture proportions
  type: File
  inputBinding:
    prefix: -q
- id: in_intra__ancestry
  doc: intra- and interspecific ancestry and marginal q [default = 0]
  type: long
  inputBinding:
    prefix: -Q
- id: in_includes_population_frequencies
  doc: includes population allele frequencies [default = 0]
  type: long
  inputBinding:
    prefix: -w
- id: in_sequence_error_set
  doc: of sequence error, set to '9' for locus-specific error rates [default = 0]
    (only required if infile is not in genotype likelihood format)
  type: long
  inputBinding:
    prefix: -e
- id: in_dirichlet_init_q
  doc: for Dirichlet init. of q, inversly prop. to variance [default = 1]
  type: long
  inputBinding:
    prefix: -s
- id: in_proposal_ancestral_allele
  doc: +/- proposal for ancestral allele frequency [default = 0.1]
  type: boolean
  inputBinding:
    prefix: -p
- id: in__proposal_fst
  doc: +/- proposal for Fst [default = 0.01]
  type: boolean
  inputBinding:
    prefix: -f
- id: in__proposal_gamma
  doc: +/- proposal for gamma [default = 0.2]
  type: boolean
  inputBinding:
    prefix: -y
- id: in__proposal_alpha
  doc: +/- proposal for alpha [default = 0.1]
  type: boolean
  inputBinding:
    prefix: -a
- id: in_seed_random_number
  doc: seed for random number generator [default = clock]
  type: long
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- entropy

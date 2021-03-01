class: CommandLineTool
id: modeltest_ng.cwl
inputs:
- id: in_datatype
  doc: sets the data type
  type: string?
  inputBinding:
    prefix: --datatype
- id: in_input
  doc: sets the input alignment file (FASTA or PHYLIP format, required)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: pipes the output into a file
  type: File?
  inputBinding:
    prefix: --output
- id: in_processes
  doc: sets the number of processors to use (shared memory)
  type: long?
  inputBinding:
    prefix: --processes
- id: in_partitions
  doc: sets a partitioning scheme
  type: File?
  inputBinding:
    prefix: --partitions
- id: in_rng_seed
  doc: sets the seed for the random number generator
  type: long?
  inputBinding:
    prefix: --rngseed
- id: in_topology
  doc: sets the starting topology
  type: string?
  inputBinding:
    prefix: --topology
- id: in_utree
  doc: sets a user tree
  type: File?
  inputBinding:
    prefix: --utree
- id: in_force
  doc: force output overriding
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_disable_checkpoint
  doc: disable checkpoint writing
  type: boolean?
  inputBinding:
    prefix: --disable-checkpoint
- id: in_asc_bias
  doc: "[:values]     includes ascertainment bias correction\ncheck modeltest manual\
    \ for more information"
  type: string?
  inputBinding:
    prefix: --asc-bias
- id: in_frequencies
  doc: "[ef]                sets the candidate models frequencies\ne: estimated -\
    \ maximum likelihood (DNA) / empirical (AA)\nf: fixed - equal (DNA) / model defined\
    \ (AA)"
  type: boolean?
  inputBinding:
    prefix: --frequencies
- id: in_models
  doc: "sets the candidate model matrices separated by commas.\nuse '+' or '-' prefix\
    \ for updating the default list.\ne.g., \"-m JTT,LG\" evaluates JTT and LG only\
    \ .\n\"-m +LG4X,+LG4M,-LG\" adds LG4 models and removes LG and from the list.\n\
    dna: *JC *HKY *TrN *TPM1 *TPM2 *TPM3\n*TIM1 *TIM2 *TIM3 *TVM *GTR\nprotein: *DAYHOFF\
    \ *LG *DCMUT *JTT *MTREV *WAG *RTREV *CPREV\n*VT *BLOSUM62 *MTMAM *MTART *MTZOA\
    \ *PMB *HIVB *HIVW\n*JTT-DCMUT *FLU *STMTREV LG4M LG4X GTR\n* included by default"
  type: long?
  inputBinding:
    prefix: --models
- id: in_schemes
  doc: "[3|5|7|11|203]          sets the number of predefined DNA substitution schemes\
    \ evaluated\n3:   JC/F81, K80/HKY, SYM/GTR\n5:   + TrNef/TrN, TPM1/TPM1uf\n7:\
    \   + TIM1ef/TIM1, TVMef/TVM\n11:  + TPM2/TPM2uf, TPM3/TPM3uf, TIM2ef/TIM2, TIM3ef/TIM3\n\
    203: All possible GTR submatrices"
  type: boolean?
  inputBinding:
    prefix: --schemes
- id: in_template
  doc: '[tool]                 sets candidate models according to a specified tool'
  type: boolean?
  inputBinding:
    prefix: --template
- id: in_eps
  doc: sets the model optimization epsilon
  type: string?
  inputBinding:
    prefix: --eps
- id: in_to_l
  doc: sets the parameter optimization tolerance
  type: string?
  inputBinding:
    prefix: --tol
- id: in_smooth_frequencies
  doc: forces frequencies smoothing
  type: boolean?
  inputBinding:
    prefix: --smooth-frequencies
- id: in_gamma_rates
  doc: "[a|g]               sets gamma rates mode\na                  uses the average\
    \ (or mean) per category (default)\nm                  uses the median per category"
  type: boolean?
  inputBinding:
    prefix: --gamma-rates
- id: in_no_compress
  doc: "disables pattern compression\nmodeltest ignores if there are missing states"
  type: boolean?
  inputBinding:
    prefix: --no-compress
- id: in_keep_params
  doc: keep branch lengths fixed
  type: boolean?
  inputBinding:
    prefix: --keep-params
- id: in_verbose
  doc: run in verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_nt
  doc: nucleotide
  type: string
  inputBinding:
    position: 0
- id: in_aa
  doc: amino acid
  type: string
  inputBinding:
    position: 1
- id: in_ml
  doc: maximum likelihood
  type: string
  inputBinding:
    position: 2
- id: in_mp
  doc: maximum parsimony
  type: string
  inputBinding:
    position: 3
- id: in_fixed_ml_jc
  doc: fixed maximum likelihood (JC)
  type: string
  inputBinding:
    position: 4
- id: in_fixed_ml_gtr
  doc: fixed maximum likelihood (GTR)
  type: string
  inputBinding:
    position: 5
- id: in_fixed_mp
  doc: fixed maximum parsimony (default)
  type: string
  inputBinding:
    position: 6
- id: in_random
  doc: random generated tree
  type: string
  inputBinding:
    position: 7
- id: in_user
  doc: fixed user defined (requires -u argument)
  type: string
  inputBinding:
    position: 8
- id: in_lewis
  doc: Lewis (2001)
  type: string
  inputBinding:
    position: 0
- id: in_felsenstein
  doc: "Felsenstein\nrequires number of invariant sites"
  type: string
  inputBinding:
    position: 1
- id: in_stam_a_takis
  doc: "Leaché et al. (2015)\nrequires invariant sites composition"
  type: string
  inputBinding:
    position: 2
- id: in_ra_xml
  doc: RAxML (DNA 3 schemes / AA full search)
  type: string
  inputBinding:
    position: 3
- id: in_phy_ml
  doc: PhyML (DNA full search / 14 AA matrices)
  type: string
  inputBinding:
    position: 4
- id: in_mr_bayes
  doc: MrBayes (DNA 3 schemes / 8 AA matrices)
  type: string
  inputBinding:
    position: 5
- id: in_paup
  doc: PAUP* (DNA full search / AA full search)
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: pipes the output into a file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- modeltest-ng

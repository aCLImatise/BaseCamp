class: CommandLineTool
id: modeltest_ng.cwl
inputs:
- id: nt
  doc: nucleotide
  type: string
  inputBinding:
    position: 0
- id: aa
  doc: amino acid
  type: string
  inputBinding:
    position: 1
- id: ml
  doc: maximum likelihood
  type: string
  inputBinding:
    position: 2
- id: mp
  doc: maximum parsimony
  type: string
  inputBinding:
    position: 3
- id: fixed_ml_jc
  doc: fixed maximum likelihood (JC)
  type: string
  inputBinding:
    position: 4
- id: fixed_ml_gtr
  doc: fixed maximum likelihood (GTR)
  type: string
  inputBinding:
    position: 5
- id: fixed_mp
  doc: fixed maximum parsimony (default)
  type: string
  inputBinding:
    position: 6
- id: random
  doc: random generated tree
  type: string
  inputBinding:
    position: 7
- id: user
  doc: fixed user defined (requires -u argument)
  type: string
  inputBinding:
    position: 8
- id: lewis
  doc: Lewis (2001)
  type: string
  inputBinding:
    position: 0
- id: felsenstein
  doc: Felsenstein requires number of invariant sites
  type: string
  inputBinding:
    position: 1
- id: stam_a_takis
  doc: Leaché et al. (2015) requires invariant sites composition
  type: string
  inputBinding:
    position: 2
- id: datatype
  doc: sets the data type
  type: string
  inputBinding:
    prefix: --datatype
- id: input
  doc: sets the input alignment file (FASTA or PHYLIP format, required)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: pipes the output into a file
  type: string
  inputBinding:
    prefix: --output
- id: processes
  doc: sets the number of processors to use (shared memory)
  type: string
  inputBinding:
    prefix: --processes
- id: partitions
  doc: sets a partitioning scheme
  type: string
  inputBinding:
    prefix: --partitions
- id: rng_seed
  doc: sets the seed for the random number generator
  type: string
  inputBinding:
    prefix: --rngseed
- id: topology
  doc: sets the starting topology
  type: string
  inputBinding:
    prefix: --topology
- id: utree
  doc: sets a user tree
  type: string
  inputBinding:
    prefix: --utree
- id: force
  doc: force output overriding
  type: boolean
  inputBinding:
    prefix: --force
- id: disable_checkpoint
  doc: disable checkpoint writing
  type: boolean
  inputBinding:
    prefix: --disable-checkpoint
- id: asc_bias
  doc: '[:values]     includes ascertainment bias correction check modeltest manual
    for more information'
  type: string
  inputBinding:
    prefix: --asc-bias
- id: frequencies
  doc: '[ef]                sets the candidate models frequencies e: estimated - maximum
    likelihood (DNA) / empirical (AA) f: fixed - equal (DNA) / model defined (AA)'
  type: boolean
  inputBinding:
    prefix: --frequencies
- id: models
  doc: "sets the candidate model matrices separated by commas. use '+' or '-' prefix\
    \ for updating the default list. e.g., \"-m JTT,LG\" evaluates JTT and LG only\
    \ . \"-m +LG4X,+LG4M,-LG\" adds LG4 models and removes LG and from the list. dna:\
    \ *JC *HKY *TrN *TPM1 *TPM2 *TPM3 *TIM1 *TIM2 *TIM3 *TVM *GTR protein: *DAYHOFF\
    \ *LG *DCMUT *JTT *MTREV *WAG *RTREV *CPREV *VT *BLOSUM62 *MTMAM *MTART *MTZOA\
    \ *PMB *HIVB *HIVW *JTT-DCMUT *FLU *STMTREV LG4M LG4X GTR * included by default"
  type: string
  inputBinding:
    prefix: --models
- id: schemes
  doc: '[3|5|7|11|203]          sets the number of predefined DNA substitution schemes
    evaluated 3:   JC/F81, K80/HKY, SYM/GTR 5:   + TrNef/TrN, TPM1/TPM1uf 7:   + TIM1ef/TIM1,
    TVMef/TVM 11:  + TPM2/TPM2uf, TPM3/TPM3uf, TIM2ef/TIM2, TIM3ef/TIM3 203: All possible
    GTR submatrices'
  type: boolean
  inputBinding:
    prefix: --schemes
- id: template
  doc: '[tool]                 sets candidate models according to a specified tool
    raxml                  RAxML (DNA 3 schemes / AA full search) phyml                  PhyML
    (DNA full search / 14 AA matrices) mrbayes                MrBayes (DNA 3 schemes
    / 8 AA matrices) paup                   PAUP* (DNA full search / AA full search)'
  type: boolean
  inputBinding:
    prefix: --template
- id: eps
  doc: sets the model optimization epsilon
  type: string
  inputBinding:
    prefix: --eps
- id: to_l
  doc: sets the parameter optimization tolerance
  type: string
  inputBinding:
    prefix: --tol
- id: smooth_frequencies
  doc: forces frequencies smoothing
  type: boolean
  inputBinding:
    prefix: --smooth-frequencies
- id: gamma_rates
  doc: '[a|g]               sets gamma rates mode a                  uses the average
    (or mean) per category (default) m                  uses the median per category'
  type: boolean
  inputBinding:
    prefix: --gamma-rates
- id: disable_checkpoint
  doc: does not create checkpoint files
  type: boolean
  inputBinding:
    prefix: --disable-checkpoint
- id: no_compress
  doc: disables pattern compression modeltest ignores if there are missing states
  type: boolean
  inputBinding:
    prefix: --no-compress
- id: keep_params
  doc: keep branch lengths fixed
  type: boolean
  inputBinding:
    prefix: --keep-params
- id: verbose
  doc: run in verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- modeltest-ng

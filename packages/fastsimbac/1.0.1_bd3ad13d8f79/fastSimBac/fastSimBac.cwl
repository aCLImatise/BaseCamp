class: CommandLineTool
id: fastSimBac.cwl
inputs:
- id: in_debugging_messages
  doc: debugging messages
  type: string?
  inputBinding:
    prefix: -s
- id: in_mutation_rate_generations
  doc: (mutation rate per site per 2N generations)
  type: long?
  inputBinding:
    prefix: -i
- id: in_input_clonal_frame
  doc: (the input clonal frame to fix simulations on, sample names must be integers
    from 0 on)
  type: long?
  inputBinding:
    prefix: -C
- id: in_burn_used_initialize
  doc: '(burn in: sequence length in base pairs to be used to initialize the recombination
    process)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_lambda_r_recombination
  doc: <lambda> (r = recombination (gene conversion) initiation rate per-individual,
    per-base pair, per-2N generations; lambda = mean length of recombination tract
    in base pairs)
  type: long?
  inputBinding:
    prefix: -r
- id: in_lambda_r_rate
  doc: <lambda2> (r2 = between-species recombination (gene conversion) initiation
    rate per-individual, per-base pair, per-2N generations; lambda2 = mean length
    of between-species recombination tract in base pairs)
  type: long?
  inputBinding:
    prefix: -x
- id: in_print_local_tree
  doc: (Print each local tree in Newick format to standard out)
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_tab_delimited_file
  doc: (Tab delimited file where first two columns indicate range of base pair positions
    scaled to the unit interval and last column is ratio with respect to base line
    recombination rate)
  type: File?
  inputBinding:
    prefix: -R
- id: in_tab_delimited_frequency
  doc: '[0|1] (Tab delimited frequency distribution file where first column indicate
    range of SNP allele frequencies from previous row to current row and last column
    is desired bin frequency. Second parameter is 1 if SNPs with derived allele freq
    > 1.0 should have alleles flipped, 0 otherwise)'
  type: File?
  inputBinding:
    prefix: -F
- id: in_assign_growth_rate
  doc: (Assign growth rate alpha across populations where alpha=-log(Np/Nr) )
  type: string?
  inputBinding:
    prefix: -G
- id: in_migrate_assign_elements
  doc: <n1> <n2> .. <mig_rate> (Assign all elements of the migration matrix for n
    populations.  Values in matrix set to mig_rate/(n-1) )
  type: long?
  inputBinding:
    prefix: -I
- id: in_m_assign_ijth
  doc: <j> <m>  (Assign i,j-th element of migration matrix to m)
  type: string?
  inputBinding:
    prefix: -m
- id: in_ma
  doc: ..<m_12>..<m_nn> (Assign values to all elements of migration matrix for n populations)
  type: long?
  inputBinding:
    prefix: -ma
- id: in_size_pop_i
  doc: <size>   (Pop i has size set to size*N_0)
  type: long?
  inputBinding:
    prefix: -n
- id: in_alpha_used_appear
  doc: <alpha>  (If used must appear after -M option)
  type: string?
  inputBinding:
    prefix: -g
- id: in_alpha_assign_growth
  doc: <alpha>  (Assign growth rate for all pops at time t)
  type: string?
  inputBinding:
    prefix: -eG
- id: in_i_alpha_assign
  doc: <i> <alpha>  (Assign growth rate alpha of pop i at time t)
  type: string?
  inputBinding:
    prefix: -eg
- id: in_m_assign_rate
  doc: <m> (Assign migrate rate m for all elements of migration matrix at time t)
  type: string?
  inputBinding:
    prefix: -eM
- id: in_i_mij_assign
  doc: <i> <j> <m_ij> (Assign migration rate for i,j-th element of migration matrix
    at time t)
  type: string?
  inputBinding:
    prefix: -em
- id: in_ema
  doc: <n> <m_11>..<m_12>..<m_nn> (Assign migration rates  within the migration matrix
    for n populations at time t)
  type: long?
  inputBinding:
    prefix: -ema
- id: in_size_new_sizes
  doc: <size> (New pop sizes at time t for all pops where new sizes = size*N_0)
  type: long?
  inputBinding:
    prefix: -eN
- id: in_i_sizei_size
  doc: <i> <size_i> (New pop size of pop i will be set to (size_i*N_0) at time t)
  type: long?
  inputBinding:
    prefix: -en
- id: in_es
  doc: <i> <p> (Split two populations.  At time t, a proportion p of chromosomes from
    pop i will migrate to a population i+1)
  type: long?
  inputBinding:
    prefix: -es
- id: in_ej
  doc: <i> <j> (Join two populations.  At time t all chromosomes migrate from pop
    i to pop j)
  type: string?
  inputBinding:
    prefix: -ej
- id: in_sample_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_region_in_base_pairs
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastsimbac:1.0.1_bd3ad13d8f79--h17a57d0_1
cwlVersion: v1.1
baseCommand:
- fastSimBac

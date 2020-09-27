class: CommandLineTool
id: scrm.cwl
inputs:
- id: in_l_set_rate
  doc: <L>       Set recombination rate to R and locus length to L.
  type: long
  inputBinding:
    prefix: -r
- id: in_sr
  doc: <R>      Change the recombination rate R at sequence position p.
  type: string
  inputBinding:
    prefix: -sr
- id: in_set_window_length
  doc: Set the approximation window length to l.
  type: long
  inputBinding:
    prefix: -l
- id: in_use_island_model
  doc: "<s1> ... <sn> [<M>]   Use an island model with npop populations,\nwhere s1\
    \ to sn individuals are sampled each population.\nOptionally assume a symmetric\
    \ migration rate of M."
  type: long
  inputBinding:
    prefix: -I
- id: in_ei
  doc: "<s1> ... <sn> [<M>]     Sample s1 to sn indiviuals from their\ncorresponding\
    \ populations at time t."
  type: long
  inputBinding:
    prefix: -eI
- id: in_assume_symmetric_rate
  doc: Assume a symmetric migration rate of M/(npop-1).
  type: long
  inputBinding:
    prefix: -M
- id: in_m_change_rate
  doc: <M>      Change the symmetric migration rate to M/(npop-1) at time t.
  type: long
  inputBinding:
    prefix: -eM
- id: in_j_m_set
  doc: <j> <M>   Set the migration rate from population j to population i to M
  type: string
  inputBinding:
    prefix: -m
- id: in_i_m_set
  doc: "<i> <j> <M>   Set the migration rate from population j to\npopulation i to\
    \ M at time t."
  type: string
  inputBinding:
    prefix: -em
- id: in_ma
  doc: <M21> ...   Sets the (backwards) migration matrix.
  type: long
  inputBinding:
    prefix: -ma
- id: in_ema
  doc: <M11> <M21> ...    Changes the migration matrix at time t
  type: long
  inputBinding:
    prefix: -ema
- id: in_es
  doc: "<i> <p>  Population admixture. Replaces a fraction of 1-p of\npopulation i\
    \ with individuals a from population npop + 1\nwhich is ignored afterwards (forward\
    \ in time)."
  type: long
  inputBinding:
    prefix: -es
- id: in_eps
  doc: "<i> <j> <p>  Partial Population admixture. Replaces a fraction of 1-p of\n\
    population i with individuals a from population j."
  type: long
  inputBinding:
    prefix: -eps
- id: in_ej
  doc: "<i> <j>  Speciation event at time t. Creates population j\nfrom individuals\
    \ of population i."
  type: string
  inputBinding:
    prefix: -ej
- id: in_n_set_present_day_size_i
  doc: <n>       Set the present day size of population i to n*N0.
  type: long
  inputBinding:
    prefix: -n
- id: in_i_change_size
  doc: <i> <n>  Change the size of population i to n*N0 at time t.
  type: long
  inputBinding:
    prefix: -en
- id: in_n_set_present_day_size_populations
  doc: <n>      Set the present day size of all populations to n*N0.
  type: long
  inputBinding:
    prefix: -eN
- id: in_set_exponential_growth_rate_i
  doc: <a>       Set the exponential growth rate of population i to a.
  type: string
  inputBinding:
    prefix: -g
- id: in_i_change_exponential
  doc: "<i> <a>  Change the exponential growth rate of population i to a\nat time\
    \ t."
  type: string
  inputBinding:
    prefix: -eg
- id: in_set_exponential_growth_rate_populations
  doc: Set the exponential growth rate of all populations to a.
  type: string
  inputBinding:
    prefix: -G
- id: in_change_exponential_rate
  doc: "<a>      Change the exponential growth rate of all populations to a\nat time\
    \ t."
  type: string
  inputBinding:
    prefix: -eG
- id: in_set_mutation_rate
  doc: "Set the mutation rate to theta = 4N0*mu, where mu is the\nneutral mutation\
    \ rate per locus."
  type: long
  inputBinding:
    prefix: -t
- id: in_print_genealogies_newick
  doc: Print the simulated local genealogies in Newick format.
  type: boolean
  inputBinding:
    prefix: -T
- id: in_print_genealogies_oriented
  doc: Print the simulated local genealogies in Oriented Forest format.
  type: boolean
  inputBinding:
    prefix: -O
- id: in_print_tmrca_length
  doc: Print the TMRCA and the local tree length for each segment.
  type: boolean
  inputBinding:
    prefix: -L
- id: in_os_fs
  doc: Print the Site Frequency Spectrum for each locus.
  type: boolean
  inputBinding:
    prefix: -oSFS
- id: in_sc
  doc: "[ms|rel|abs] Scaling of sequence positions. Either\nrelative (rel) to the\
    \ locus length between 0 and 1,\nabsolute (abs) in base pairs or as in ms (default)."
  type: boolean
  inputBinding:
    prefix: -SC
- id: in_in_it
  doc: Read genealogies at the beginning of the sequence.
  type: File
  inputBinding:
    prefix: -init
- id: in_seed
  doc: "[<SEED2> <SEED3>]   The random seed to use. Takes up to three\ninteger numbers."
  type: long
  inputBinding:
    prefix: -seed
- id: in_specify_number_significant
  doc: "Specify the number of significant digits used in the output.\nDefaults to\
    \ 6."
  type: long
  inputBinding:
    prefix: -p
- id: in_print_model
  doc: Prints information about the demographic model.
  type: boolean
  inputBinding:
    prefix: --print-model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scrm

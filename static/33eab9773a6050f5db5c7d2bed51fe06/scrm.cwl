class: CommandLineTool
id: ../../../scrm.cwl
inputs:
- id: l_set_recombination
  doc: <L>       Set recombination rate to R and locus length to L.
  type: string
  inputBinding:
    prefix: -r
- id: sr
  doc: <R>      Change the recombination rate R at sequence position p.
  type: string
  inputBinding:
    prefix: -sr
- id: set_window_length
  doc: Set the approximation window length to l.
  type: string
  inputBinding:
    prefix: -l
- id: use_island_model
  doc: <s1> ... <sn> [<M>]   Use an island model with npop populations, where s1 to
    sn individuals are sampled each population. Optionally assume a symmetric migration
    rate of M.
  type: string
  inputBinding:
    prefix: -I
- id: ei
  doc: <s1> ... <sn> [<M>]     Sample s1 to sn indiviuals from their corresponding
    populations at time t.
  type: string
  inputBinding:
    prefix: -eI
- id: assume_symmetric_rate
  doc: Assume a symmetric migration rate of M/(npop-1).
  type: string
  inputBinding:
    prefix: -M
- id: m_change_rate
  doc: <M>      Change the symmetric migration rate to M/(npop-1) at time t.
  type: string
  inputBinding:
    prefix: -eM
- id: j_m_set
  doc: <j> <M>   Set the migration rate from population j to population i to M
  type: string
  inputBinding:
    prefix: -m
- id: i_j_m
  doc: <i> <j> <M>   Set the migration rate from population j to population i to M
    at time t.
  type: string
  inputBinding:
    prefix: -em
- id: ma
  doc: <M21> ...   Sets the (backwards) migration matrix.
  type: string
  inputBinding:
    prefix: -ma
- id: ema
  doc: <M11> <M21> ...    Changes the migration matrix at time t
  type: string
  inputBinding:
    prefix: -ema
- id: es
  doc: '<i> <p>  Population admixture. Replaces a fraction of 1-p of population i
    with individuals a from population npop + 1 which is ignored afterwards (forward
    in time). '
  type: string
  inputBinding:
    prefix: -es
- id: eps
  doc: <i> <j> <p>  Partial Population admixture. Replaces a fraction of 1-p of population
    i with individuals a from population j.
  type: string
  inputBinding:
    prefix: -eps
- id: ej
  doc: <i> <j>  Speciation event at time t. Creates population j from individuals
    of population i.
  type: string
  inputBinding:
    prefix: -ej
- id: n_set_size
  doc: <n>       Set the present day size of population i to n*N0.
  type: string
  inputBinding:
    prefix: -n
- id: i_change_size
  doc: <i> <n>  Change the size of population i to n*N0 at time t.
  type: string
  inputBinding:
    prefix: -en
- id: set_day_size
  doc: <n>      Set the present day size of all populations to n*N0.
  type: string
  inputBinding:
    prefix: -eN
- id: set_exponential_growth
  doc: <a>       Set the exponential growth rate of population i to a.
  type: string
  inputBinding:
    prefix: -g
- id: i_exponential_rate
  doc: <i> <a>  Change the exponential growth rate of population i to a at time t.
  type: string
  inputBinding:
    prefix: -eg
- id: set_exponential_rate
  doc: Set the exponential growth rate of all populations to a.
  type: string
  inputBinding:
    prefix: -G
- id: change_exponential_growth
  doc: <a>      Change the exponential growth rate of all populations to a at time
    t.
  type: string
  inputBinding:
    prefix: -eG
- id: set_mutation_rate
  doc: Set the mutation rate to theta = 4N0*mu, where mu is the  neutral mutation
    rate per locus.
  type: string
  inputBinding:
    prefix: -t
- id: print_genealogies_newick
  doc: Print the simulated local genealogies in Newick format.
  type: boolean
  inputBinding:
    prefix: -T
- id: print_genealogies_oriented
  doc: Print the simulated local genealogies in Oriented Forest format.
  type: boolean
  inputBinding:
    prefix: -O
- id: print_tmrca_length
  doc: Print the TMRCA and the local tree length for each segment.
  type: boolean
  inputBinding:
    prefix: -L
- id: os_fs
  doc: Print the Site Frequency Spectrum for each locus.
  type: boolean
  inputBinding:
    prefix: -oSFS
- id: sc
  doc: '[ms|rel|abs] Scaling of sequence positions. Either relative (rel) to the locus
    length between 0 and 1, absolute (abs) in base pairs or as in ms (default).'
  type: boolean
  inputBinding:
    prefix: -SC
- id: in_it
  doc: Read genealogies at the beginning of the sequence.
  type: File
  inputBinding:
    prefix: -init
- id: print_model
  doc: Prints information about the demographic model.
  type: boolean
  inputBinding:
    prefix: --print-model
outputs: []
cwlVersion: v1.1
baseCommand:
- scrm

class: CommandLineTool
id: scrm.cwl
inputs:
- id: r
  doc: <L>       Set recombination rate to R and locus length to L.
  type: string
  inputBinding:
    prefix: -r
- id: sr
  doc: <R>      Change the recombination rate R at sequence position p.
  type: string
  inputBinding:
    prefix: -sr
- id: l
  doc: Set the approximation window length to l.
  type: string
  inputBinding:
    prefix: -l
- id: i
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
- id: m
  doc: Assume a symmetric migration rate of M/(npop-1).
  type: string
  inputBinding:
    prefix: -M
- id: em
  doc: <M>      Change the symmetric migration rate to M/(npop-1) at time t.
  type: string
  inputBinding:
    prefix: -eM
- id: m
  doc: <j> <M>   Set the migration rate from population j to population i to M
  type: string
  inputBinding:
    prefix: -m
- id: em
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
- id: n
  doc: <n>       Set the present day size of population i to n*N0.
  type: string
  inputBinding:
    prefix: -n
- id: en
  doc: <i> <n>  Change the size of population i to n*N0 at time t.
  type: string
  inputBinding:
    prefix: -en
- id: en
  doc: <n>      Set the present day size of all populations to n*N0.
  type: string
  inputBinding:
    prefix: -eN
- id: g
  doc: <a>       Set the exponential growth rate of population i to a.
  type: string
  inputBinding:
    prefix: -g
- id: eg
  doc: <i> <a>  Change the exponential growth rate of population i to a at time t.
  type: string
  inputBinding:
    prefix: -eg
- id: g
  doc: Set the exponential growth rate of all populations to a.
  type: string
  inputBinding:
    prefix: -G
- id: eg
  doc: <a>      Change the exponential growth rate of all populations to a at time
    t.
  type: string
  inputBinding:
    prefix: -eG
- id: t
  doc: Set the mutation rate to theta = 4N0*mu, where mu is the  neutral mutation
    rate per locus.
  type: string
  inputBinding:
    prefix: -t
- id: t
  doc: Print the simulated local genealogies in Newick format.
  type: boolean
  inputBinding:
    prefix: -T
- id: o
  doc: Print the simulated local genealogies in Oriented Forest format.
  type: boolean
  inputBinding:
    prefix: -O
- id: l
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
- id: seed
  doc: '[<SEED2> <SEED3>]   The random seed to use. Takes up to three integer numbers.'
  type: string
  inputBinding:
    prefix: -seed
- id: p
  doc: Specify the number of significant digits used in the output. Defaults to 6.
  type: string
  inputBinding:
    prefix: -p
- id: print_model
  doc: ',    '
  type: boolean
  inputBinding:
    prefix: -print-model
- id: print_model
  doc: Prints information about the demographic model.
  type: boolean
  inputBinding:
    prefix: --print-model
outputs: []
cwlVersion: v1.1
baseCommand:
- scrm

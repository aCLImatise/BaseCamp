class: CommandLineTool
id: RNA2Dfold.cwl
inputs:
- id: program
  doc: --noconv                  Do not automatically substitude nucleotide  "T" with
    "U" (default=off)
  type: string
  inputBinding:
    position: 0
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: num_threads
  doc: Set the number of threads used for calculations  (only available when compiled
    with OpenMP  support)
  type: long
  inputBinding:
    prefix: --numThreads
- id: part_func
  doc: calculate partition function and thus,  Boltzmann probabilities and Gibbs free
    energy (default=off)
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: stoch_bt
  doc: backtrack a certain number of Boltzmann samples  from the appropriate k,l neighborhood(s)
  type: long
  inputBinding:
    prefix: --stochBT
- id: neighborhood
  doc: :<l>    backtrack structures from certain  k,l-neighborhood only, can be specified  multiple
    times (<k>:<l>,<m>:<n>,...)
  type: string
  inputBinding:
    prefix: --neighborhood
- id: pf_scale
  doc: scaling factor for pf to avoid overflows
  type: string
  inputBinding:
    prefix: --pfScale
- id: no_bt
  doc: do not backtrack structures, calculate energy  contributions only (default=off)
  type: boolean
  inputBinding:
    prefix: --noBT
- id: circ
  doc: Assume a circular (instead of linear) RNA  molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: parameter_file
  doc: Read energy parameters from paramfile, instead  of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --parameterFile
- id: dangles
  doc: How to treat "dangling end" energies for  bases adjacent to helices in free
    ends and  multi-loops (possible values="0", "2" default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_gu
  doc: Do not allow GU pairs (default=off)
  type: boolean
  inputBinding:
    prefix: --noGU
- id: no_closing_gu
  doc: Do not allow GU pairs at the end of helices (default=off)
  type: boolean
  inputBinding:
    prefix: --noClosingGU
outputs: []
cwlVersion: v1.1
baseCommand:
- RNA2Dfold

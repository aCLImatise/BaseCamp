class: CommandLineTool
id: RNAheat.cwl
inputs:
- id: program
  doc: --Tmin=t1              Lowest temperature (default=`0') --Tmax=t2              Highest
    temperature (default=`100') --stepsize=FLOAT       Calculate partition function
    every stepsize degrees C (default=`1.')
  type: string
  inputBinding:
    position: 0
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: i_points
  doc: The program fits a parabola to 2*ipoints+1 data points to calculate 2nd derivatives.
    Increasing this parameter produces a smoother curve (default=`2')
  type: string
  inputBinding:
    prefix: --ipoints
- id: noconv
  doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: jobs
  doc: "[=number]        Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  type: boolean
  inputBinding:
    prefix: --jobs
- id: in_file
  doc: Read a file instead of reading from stdin
  type: File
  inputBinding:
    prefix: --infile
- id: auto_id
  doc: Automatically generate an ID for each sequence. (default=off)
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: id_prefix
  doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  type: string
  inputBinding:
    prefix: --id-prefix
- id: max_bp_span
  doc: Set the maximum base pair span (default=`-1')
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
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
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: g_quad
  doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm.
    (default=off)
  type: boolean
  inputBinding:
    prefix: --gquad
- id: circ
  doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAheat

class: CommandLineTool
id: RNApaln.cwl
inputs:
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
- id: print_alignment
  doc: "[=filename] Print an \"alignment\" with gaps of the profiles The aligned structures\
    \ are written to filename, if specified Otherwise output is written to stdout,\
    \ unless the -Xm option is set in which case \"backtrack.file\" is used. (default=`stdout')"
  type: boolean
  inputBinding:
    prefix: --printAlignment
- id: noconv
  doc: Do not automatically substitude nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: mode
  doc: Set the alignment mode to be used
  type: string
  inputBinding:
    prefix: --mode
- id: gap_o
  doc: Set the gap open penalty
  type: string
  inputBinding:
    prefix: --gapo
- id: gape
  doc: Set the gap extension penalty
  type: string
  inputBinding:
    prefix: --gape
- id: seq_w
  doc: Set the weight of sequence (compared to structure) in the scoring function.
  type: string
  inputBinding:
    prefix: --seqw
- id: end_gaps
  doc: Use free end-gaps (default=off)
  type: boolean
  inputBinding:
    prefix: --endgaps
- id: temp
  doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
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
outputs: []
cwlVersion: v1.1
baseCommand:
- RNApaln

class: CommandLineTool
id: RNAup.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: constraint
  doc: Calculate structures subject to constraints. (default=off)
  type: boolean
  inputBinding:
    prefix: --constraint
- id: no_output_file
  doc: Do not produce an output file (default=off)
  type: boolean
  inputBinding:
    prefix: --no_output_file
- id: no_header
  doc: Do not produce a header with the command line  parameters used in the outputfile
    (default=off)
  type: boolean
  inputBinding:
    prefix: --no_header
- id: noconv
  doc: Do not automatically substitude nucleotide "T"  with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: u_length
  doc: specifies the length of the unstructured region  in the output. (default=`4')
  type: long
  inputBinding:
    prefix: --ulength
- id: contributions
  doc: Specify the contributions listed in the output (default=`S')
  type: string
  inputBinding:
    prefix: --contributions
- id: interaction_pairwise
  doc: Activate pairwise interaction mode (default=off)
  type: boolean
  inputBinding:
    prefix: --interaction_pairwise
- id: interaction_first
  doc: Activate interaction mode using first sequence  only (default=off)
  type: boolean
  inputBinding:
    prefix: --interaction_first
- id: dangles
  doc: How to treat "dangling end" energies for bases  adjacent to helices in free
    ends and  multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices  of length 1). (default=off)
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
  doc: Read energy parameters from paramfile, instead of  using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAup

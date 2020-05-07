class: CommandLineTool
id: RNApdist.cwl
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
- id: noconv
  doc: Do not automatically substitude nucleotide  "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: compare
  doc: "|m|f|c         Specify the comparison directive. (default=`p')"
  type: string
  inputBinding:
    prefix: --compare
- id: backtrack
  doc: "[=<filename>]  Print an \"alignment\" with gaps of the  profiles. The aligned\
    \ structures are written  to <filename>, if specified. (default=`none')"
  type: boolean
  inputBinding:
    prefix: --backtrack
- id: dangles
  doc: set energy model for treatment of dangling  bases (possible values="0", "2"
    default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs  (helices of length 1). (default=off)
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
  doc: Read energy parameters from paramfile, instead  of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNApdist

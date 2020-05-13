class: CommandLineTool
id: RNALfold.cwl
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
- id: span
  doc: Set the maximum allowed separation of a base pair  to span. I.e. no pairs (i,j)
    with j-i>span will  be allowed. (default=`150')
  type: long
  inputBinding:
    prefix: --span
- id: noconv
  doc: Do not automatically substitude nucleotide "T"  with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: zscore
  doc: "[=DOUBLE]      Activate z-score computation. An optional argument  may be\
    \ supplied to set the threshold Due to parsing the commandline parameters a negative\
    \ value should  be given immediately after \"z\" without spaces  e.g. -z-4.9 (default=`-2')"
  type: boolean
  inputBinding:
    prefix: --zscore
- id: dangles
  doc: How to treat "dangling end" energies for bases  adjacent to helices in free
    ends and multi-loops (default=`2')
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
- RNALfold

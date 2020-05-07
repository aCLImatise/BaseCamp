class: CommandLineTool
id: RNALfold.cwl
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
- id: verbose
  doc: Be verbose (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: span
  doc: Set the maximum distance between any two pairing nucleotides. (default=`150')
  type: long
  inputBinding:
    prefix: --span
- id: outfile
  doc: '[=<filename>]    Print output to file instead of stdout'
  type: boolean
  inputBinding:
    prefix: --outfile
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
- id: zscore
  doc: "[=DOUBLE]         Limit the output to predictions with a Z-score below a threshold\
    \ (default=`-2')"
  type: boolean
  inputBinding:
    prefix: --zscore
- id: g_quad
  doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (default=off)
  type: boolean
  inputBinding:
    prefix: --gquad
- id: shape
  doc: Use SHAPE reactivity data to guide structure predictions.
  type: File
  inputBinding:
    prefix: --shape
- id: temp
  doc: Rescale energy parameters to a temperature of temp C. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
- id: dangles
  doc: Change the dangling end model (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNALfold

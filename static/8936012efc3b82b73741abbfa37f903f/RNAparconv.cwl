class: CommandLineTool
id: RNAparconv.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: output
  doc: Specify an output file name. If argument is missing  the converted energy parameters
    are printed to  'stdout'.
  type: File
  inputBinding:
    prefix: --output
- id: input
  doc: Specify an input file name. If argument is missing  the energy parameter input
    can be supplied via  'stdin'.
  type: File
  inputBinding:
    prefix: --input
- id: vanilla
  doc: Print just as much as needed to represent the given  energy parameters data
    set. This option overrides all other output settings! (default=off)
  type: boolean
  inputBinding:
    prefix: --vanilla
- id: dump
  doc: Just dump Vienna 1.8.4 energy parameters in format  used since 2.0. This option
    skips any energy parameter input! (default=off)
  type: boolean
  inputBinding:
    prefix: --dump
- id: silent
  doc: Print just energy parameters and appropriate comment  lines but suppress all
    other output (default=off)
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAparconv

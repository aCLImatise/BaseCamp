class: CommandLineTool
id: mb_bsfinder.cwl
inputs:
- id: input_file
  doc: path to the inputfile *.pileup
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: define output file *.table
  type: string
  inputBinding:
    position: 1
- id: threshold
  doc: set maximum p-value for site selection
  type: string
  inputBinding:
    prefix: --threshold
- id: min_cov
  doc: set minimum coverage
  type: long
  inputBinding:
    prefix: --mincov
- id: reference
  doc: set default reference nucleotide
  type: string
  inputBinding:
    prefix: --reference
- id: mutation
  doc: set default mutation nucleotide
  type: string
  inputBinding:
    prefix: --mutation
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-bsfinder

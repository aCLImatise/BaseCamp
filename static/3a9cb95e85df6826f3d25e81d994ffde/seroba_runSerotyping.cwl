class: CommandLineTool
id: ../../../seroba_runSerotyping.cwl
inputs:
- id: no_clean
  doc: Do not clean up intermediate files (assemblies, ariba report)
  type: boolean
  inputBinding:
    prefix: --noclean
- id: coverage
  doc: threshold for k-mer coverage of the reference sequence , default = 20
  type: string
  inputBinding:
    prefix: --coverage
- id: databases
  doc: path to database directory
  type: string
  inputBinding:
    position: 0
- id: read_one
  doc: forward read file
  type: string
  inputBinding:
    position: 1
- id: read_two
  doc: backward read file
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: unique prefix
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- seroba
- runSerotyping

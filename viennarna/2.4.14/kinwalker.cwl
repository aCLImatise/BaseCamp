class: CommandLineTool
id: kinwalker.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: test
  doc: Use test sequence.
  type: boolean
  inputBinding:
    prefix: --test
- id: verbose
  doc: Verbose mode. Print debugging messages about program progress.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- kinwalker

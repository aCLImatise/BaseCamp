class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kinwalker.cwl
inputs:
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
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kinwalker

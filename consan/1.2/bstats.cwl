class: CommandLineTool
id: ../../../bstats.cwl
inputs:
- id: _verbose
  doc: ': verbose '
  type: boolean
  inputBinding:
    prefix: -v
- id: _sampling_iterations
  doc: ': Sampling iterations (100) '
  type: long
  inputBinding:
    prefix: -i
- id: output_diff_data
  doc: ': Output diff data to <file>'
  type: File
  inputBinding:
    prefix: -d
- id: b_strap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bstats

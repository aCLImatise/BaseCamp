class: CommandLineTool
id: ../../../synthReadGen_outputFile.cwl
inputs:
- id: synth_read_gen
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- synthReadGen
- outputFile

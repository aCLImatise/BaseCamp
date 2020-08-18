class: CommandLineTool
id: ../../../pauda_build.cwl
inputs:
- id: references_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p_aud_a_index_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pauda-build

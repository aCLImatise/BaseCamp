class: CommandLineTool
id: samtools_glfview.cwl
inputs:
- id: glf_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_glf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- glfview

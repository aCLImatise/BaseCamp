class: CommandLineTool
id: samtools_glfview.cwl
inputs:
- id: in_glf_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_glf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- glfview

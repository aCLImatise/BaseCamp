class: CommandLineTool
id: mono_cil_strip.cwl
inputs:
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output
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
- mono-cil-strip

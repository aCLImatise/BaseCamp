class: CommandLineTool
id: dynalign_smp.cwl
inputs:
- id: in_dyn_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dynalign-smp

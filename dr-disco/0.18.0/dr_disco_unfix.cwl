class: CommandLineTool
id: dr_disco_unfix.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: temp_dir
  doc: 'Path in which temp files are stored (default: /tmp)'
  type: File
  inputBinding:
    prefix: --temp-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- unfix

class: CommandLineTool
id: ../../../dr_disco_unfix.cwl
inputs:
- id: temp_dir
  doc: 'Path in which temp files are stored (default: /tmp)'
  type: File
  inputBinding:
    prefix: --temp-dir
- id: input_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- unfix

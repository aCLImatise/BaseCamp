class: CommandLineTool
id: dr_disco_fix.cwl
inputs:
- id: in_temp_dir
  doc: 'Path in which temp files are stored (default: /tmp)'
  type: File?
  inputBinding:
    prefix: --temp-dir
- id: in_input_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- fix

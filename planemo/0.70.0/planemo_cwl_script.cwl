class: CommandLineTool
id: ../../../planemo_cwl_script.cwl
inputs:
- id: in_no_container
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no_container
- id: in_output_dir
  doc: ''
  type: File
  inputBinding:
    prefix: --output_dir
- id: in_base_dir
  doc: ''
  type: File
  inputBinding:
    prefix: --base_dir
- id: in_script_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- cwl_script

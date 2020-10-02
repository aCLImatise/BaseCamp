class: CommandLineTool
id: PrimedLAMP.cwl
inputs:
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    prefix: --InputFile
- id: in_run_id
  doc: ''
  type: string
  inputBinding:
    prefix: --RunID
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PrimedLAMP

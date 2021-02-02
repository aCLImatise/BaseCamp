class: CommandLineTool
id: validateManifest.cwl
inputs:
- id: in_enc_val_data
  doc: ', relative to workingDir, defaults to encValData.'
  type: string
  inputBinding:
    prefix: -encValData
- id: in_dir
  doc: ''
  type: string
  inputBinding:
    prefix: -dir
- id: in_validate_manifest
  doc: -dir=workingDir, defaults to the current directory.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- validateManifest

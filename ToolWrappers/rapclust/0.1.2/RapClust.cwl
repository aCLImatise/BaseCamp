class: CommandLineTool
id: RapClust.cwl
inputs:
- id: in_config
  doc: Config file describing the experimental setup  [required]
  type: File
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RapClust

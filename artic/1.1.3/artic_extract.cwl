class: CommandLineTool
id: ../../../artic_extract.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: base_caller
  doc: The name of the basecaller
  type: string
  inputBinding:
    prefix: --basecaller
- id: directory
  doc: The name of the database.
  type: Directory
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- extract

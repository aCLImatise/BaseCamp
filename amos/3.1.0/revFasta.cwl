class: CommandLineTool
id: revFasta.cwl
inputs:
- id: i
  doc: Reverse complement the specified id only
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- revFasta

class: CommandLineTool
id: addCNSToStore.cwl
inputs:
- id: path
  doc: Path to smrtportal installation. Required if smrtportal is not in path.
  type: boolean
  inputBinding:
    prefix: -path
- id: prefix
  doc: Prefix for stores to write to
  type: boolean
  inputBinding:
    prefix: -prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- addCNSToStore

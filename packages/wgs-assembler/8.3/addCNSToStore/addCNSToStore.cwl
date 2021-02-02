class: CommandLineTool
id: addCNSToStore.cwl
inputs:
- id: in_path
  doc: Path to smrtportal installation. Required if smrtportal is not in path.
  type: boolean
  inputBinding:
    prefix: -path
- id: in_prefix
  doc: Prefix for stores to write to
  type: boolean
  inputBinding:
    prefix: -prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- addCNSToStore

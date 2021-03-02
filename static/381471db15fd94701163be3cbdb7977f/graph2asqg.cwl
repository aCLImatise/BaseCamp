class: CommandLineTool
id: graph2asqg.cwl
inputs:
- id: in_b
  doc: '# (required)'
  type: string?
  inputBinding:
    prefix: -b
- id: in_optional_default_basename
  doc: '# (optional, default: <basename>)'
  type: File?
  inputBinding:
    prefix: -r
- id: in_l
  doc: '# (required)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_optional_use_ids
  doc: '# (optional) use numeric IDs instead of FASTA IDs'
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- graph2asqg

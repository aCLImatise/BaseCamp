class: CommandLineTool
id: mafCoverage.cwl
inputs:
- id: in_restrict
  doc: Restrict to parts in restrict.bed
  type: string?
  inputBinding:
    prefix: -restrict
- id: in_count
  doc: Number of matching species to count coverage. Default = 3
  type: long?
  inputBinding:
    prefix: -count
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafCoverage

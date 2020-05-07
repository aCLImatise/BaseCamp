class: CommandLineTool
id: msslookup_proteingroup.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    prefix: --dbfile
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- proteingroup

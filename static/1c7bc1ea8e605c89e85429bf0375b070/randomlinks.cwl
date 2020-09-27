class: CommandLineTool
id: randomlinks.cwl
inputs:
- id: in_ruleset
  doc: ''
  type: string
  inputBinding:
    prefix: -ruleset
- id: in_karyotype
  doc: ''
  type: File
  inputBinding:
    prefix: -karyotype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- randomlinks

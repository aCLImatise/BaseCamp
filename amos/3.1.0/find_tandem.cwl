class: CommandLineTool
id: find_tandem.cwl
inputs:
- id: f
  doc: multifasta file to scan
  type: string
  inputBinding:
    prefix: -f
- id: u
  doc: 'minimum number of units to report (default: 3)'
  type: string
  inputBinding:
    prefix: -u
- id: l
  doc: 'minimum length of tandem in bp (default: 8)'
  type: string
  inputBinding:
    prefix: -l
- id: x
  doc: 'max unit length (default: 4)'
  type: string
  inputBinding:
    prefix: -x
- id: m
  doc: 'min unit length (default: 1)'
  type: string
  inputBinding:
    prefix: -m
- id: k
  doc: 'flanking bp to report (default: 10)'
  type: string
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- find-tandem

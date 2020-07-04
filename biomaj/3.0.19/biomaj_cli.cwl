class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biomaj_cli.py.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: check
  doc: ''
  type: boolean
  inputBinding:
    prefix: --check
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: from_scratch
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fromscratch
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- biomaj-cli.py

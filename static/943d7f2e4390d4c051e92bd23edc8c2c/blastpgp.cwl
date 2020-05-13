class: CommandLineTool
id: blastpgp.cwl
inputs:
- id: m
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: Use composition based score adjustment
  type: boolean
  inputBinding:
    prefix: -t
- id: q
  doc: 'ASN.1 Scoremat input of checkpoint data:'
  type: boolean
  inputBinding:
    prefix: -q
- id: u
  doc: 'ASN.1 Scoremat output of checkpoint data:'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- blastpgp

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/blastpgp.cwl
inputs:
- id: alignment_view_options
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
- id: use_composition_based
  doc: Use composition based score adjustment
  type: boolean
  inputBinding:
    prefix: -t
- id: asn_scoremat_input
  doc: 'ASN.1 Scoremat input of checkpoint data:'
  type: boolean
  inputBinding:
    prefix: -q
- id: asn_scoremat_output
  doc: 'ASN.1 Scoremat output of checkpoint data:'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- blastpgp

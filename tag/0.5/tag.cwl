class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tag.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: cmd
  doc: bae, bcollapse, gff3, locuspocus, merge, occ, pmrna, pep2nuc, sum
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tag

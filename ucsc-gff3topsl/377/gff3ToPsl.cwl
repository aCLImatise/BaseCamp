class: CommandLineTool
id: ../../../gff3ToPsl.cwl
inputs:
- id: drop_q
  doc: drop record when query not found in queryChromSizes
  type: boolean
  inputBinding:
    prefix: -dropQ
- id: dropt
  doc: drop record when target not found in targetChromSizes
  type: boolean
  inputBinding:
    prefix: -dropT
- id: in_gff_three
  doc: GFF3 formatted file with Gap attribute in match records
  type: string
  inputBinding:
    position: 0
- id: out_dot_psl
  doc: PSL formatted output
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gff3ToPsl

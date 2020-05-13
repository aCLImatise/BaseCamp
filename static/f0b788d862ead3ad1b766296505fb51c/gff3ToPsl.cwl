class: CommandLineTool
id: gff3ToPsl.cwl
inputs:
- id: query_chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_chom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ingff3
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 3
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gff3ToPsl

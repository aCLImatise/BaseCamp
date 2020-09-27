class: CommandLineTool
id: chakin_phylogeny_gene_order.cwl
inputs:
- id: in_nuke
  doc: Removes all previous gene ordering data
  type: boolean
  inputBinding:
    prefix: --nuke
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- phylogeny
- gene_order

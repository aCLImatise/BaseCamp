class: CommandLineTool
id: faithpd.cwl
inputs:
- id: i
  doc: The input BIOM table.
  type: boolean
  inputBinding:
    prefix: -i
- id: t
  doc: The input phylogeny in newick.
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: The output series.
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- faithpd

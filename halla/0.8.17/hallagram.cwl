class: CommandLineTool
id: hallagram.cwl
inputs:
- id: sim_table
  doc: table of pairwise similarity scores
  type: string
  inputBinding:
    position: 0
- id: tree
  doc: hypothesis tree (for getting feature order)
  type: string
  inputBinding:
    position: 1
- id: associations
  doc: HAllA associations
  type: string
  inputBinding:
    position: 2
- id: strongest
  doc: isolate the N strongest associations
  type: string
  inputBinding:
    prefix: --strongest
- id: largest
  doc: isolate the N largest associations
  type: string
  inputBinding:
    prefix: --largest
- id: mask
  doc: mask feature pairs not in associations
  type: boolean
  inputBinding:
    prefix: --mask
- id: cmap
  doc: matplotlib color map
  type: string
  inputBinding:
    prefix: --cmap
- id: a_x_labels
  doc: AXLABELS axis labels
  type: string
  inputBinding:
    prefix: --axlabels
- id: outfile
  doc: output file name
  type: string
  inputBinding:
    prefix: --outfile
- id: similarity
  doc: Similarity metric has been used for similarity measurement
  type: string
  inputBinding:
    prefix: --similarity
- id: order_by
  doc: Order the significant association by similarity, pvalue, or qvalue
  type: string
  inputBinding:
    prefix: --orderby
outputs: []
cwlVersion: v1.1
baseCommand:
- hallagram

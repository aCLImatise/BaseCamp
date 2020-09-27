class: CommandLineTool
id: hallagram.cwl
inputs:
- id: in_strongest
  doc: isolate the N strongest associations
  type: string
  inputBinding:
    prefix: --strongest
- id: in_largest
  doc: isolate the N largest associations
  type: string
  inputBinding:
    prefix: --largest
- id: in_mask
  doc: mask feature pairs not in associations
  type: boolean
  inputBinding:
    prefix: --mask
- id: in_cmap
  doc: matplotlib color map
  type: string
  inputBinding:
    prefix: --cmap
- id: in_a_x_labels
  doc: "AXLABELS\naxis labels"
  type: string
  inputBinding:
    prefix: --axlabels
- id: in_outfile
  doc: output file name
  type: File
  inputBinding:
    prefix: --outfile
- id: in_similarity
  doc: "Similarity metric has been used for similarity\nmeasurement"
  type: string
  inputBinding:
    prefix: --similarity
- id: in_order_by
  doc: "Order the significant association by similarity,\npvalue, or qvalue\n"
  type: string
  inputBinding:
    prefix: --orderby
- id: in_sim_table
  doc: table of pairwise similarity scores
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: hypothesis tree (for getting feature order)
  type: string
  inputBinding:
    position: 1
- id: in_associations
  doc: HAllA associations
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output file name
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- hallagram

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hierarchical_clustering_heatmap.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: uniqid
  doc: Name of the column with unique dentifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: den_do_gram
  doc: Indicate wether you want to use a dendogram or not in the heatmap.
  type: boolean
  inputBinding:
    prefix: --dendogram
- id: labels
  doc: Indicate wichlabels if any that you want to remove from the plot.
  type: string
  inputBinding:
    prefix: --labels
- id: fig
  doc: Output path for heatmap file[PDF]
  type: string
  inputBinding:
    prefix: --fig
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- hierarchical_clustering_heatmap.py

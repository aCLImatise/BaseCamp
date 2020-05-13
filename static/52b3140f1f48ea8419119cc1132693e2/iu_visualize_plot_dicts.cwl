class: CommandLineTool
id: iu_visualize_plot_dicts.cwl
inputs:
- id: plot_dict
  doc: cPickle dictionary that contains quality score info ready for plotting
  type: string
  inputBinding:
    position: 0
- id: dest
  doc: Figure destination
  type: string
  inputBinding:
    prefix: --dest
- id: title
  doc: Title to appear at the top of the figure
  type: string
  inputBinding:
    prefix: --title
- id: split_tiles
  doc: When set, quality curves will be shown separately for each tile
  type: boolean
  inputBinding:
    prefix: --split-tiles
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-visualize-plot-dicts

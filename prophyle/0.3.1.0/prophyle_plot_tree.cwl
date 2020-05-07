class: CommandLineTool
id: prophyle_plot_tree.py.cwl
inputs:
- id: a
  doc: attribute to print with each node (e.g., sci_name)
  type: string
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_plot_tree.py

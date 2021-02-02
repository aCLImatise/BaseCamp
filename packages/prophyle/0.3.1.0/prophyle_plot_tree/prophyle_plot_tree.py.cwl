class: CommandLineTool
id: prophyle_plot_tree.py.cwl
inputs:
- id: in_attribute_print_node
  doc: attribute to print with each node (e.g., sci_name)
  type: string
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophyle_plot_tree.py

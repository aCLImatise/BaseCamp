class: CommandLineTool
id: run_order_regression.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Group/treatment identifier in design file [Optional].
  type: File?
  inputBinding:
    prefix: --group
- id: in_order
  doc: "Name of the column on design file that contains run\norder"
  type: File?
  inputBinding:
    prefix: --order
- id: in_levels
  doc: Different groups to sort by separeted by commas.
  type: string?
  inputBinding:
    prefix: --levels
- id: in_fig
  doc: Name of PDF to save scatter plots.
  type: string?
  inputBinding:
    prefix: --fig
- id: in_table
  doc: Name of table for scatter plots
  type: string?
  inputBinding:
    prefix: --table
- id: in_flags
  doc: Name of table flags
  type: string?
  inputBinding:
    prefix: --flags
- id: in_debug
  doc: Add debugging log output.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_palette
  doc: Name of the palette to use.
  type: string?
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string?
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- run_order_regression.py

class: CommandLineTool
id: random_forest.py.cwl
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
  doc: "Name of the column with unique identifiers on wide\nfile."
  type: File?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Group/treatment identifier in design file.
  type: File?
  inputBinding:
    prefix: --group
- id: in_levels
  doc: Different groups to sort by separeted by commas.
  type: string?
  inputBinding:
    prefix: --levels
- id: in_snum
  doc: Number of estimators.
  type: long?
  inputBinding:
    prefix: --snum
- id: in_num
  doc: Number of varibles toplot ont Variable Importance Plot
  type: long?
  inputBinding:
    prefix: --num
- id: in_out
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_two
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: --out2
- id: in_figure
  doc: "Name of output file to store feature importance plots\nfor the model"
  type: File?
  inputBinding:
    prefix: --figure
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
- id: out_out
  doc: Output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_two
  doc: Output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_two)
- id: out_figure
  doc: "Name of output file to store feature importance plots\nfor the model"
  type: File?
  outputBinding:
    glob: $(inputs.in_figure)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- random_forest.py

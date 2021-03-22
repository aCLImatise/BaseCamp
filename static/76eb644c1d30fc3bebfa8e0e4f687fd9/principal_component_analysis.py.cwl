class: CommandLineTool
id: principal_component_analysis.py.cwl
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
  doc: Name of the column with groups.
  type: string?
  inputBinding:
    prefix: --group
- id: in_levels
  doc: Different groups to sort by separeted by commas.
  type: string?
  inputBinding:
    prefix: --levels
- id: in_load_out
  doc: Name of output file to store loadings. TSV format.
  type: File?
  inputBinding:
    prefix: --load_out
- id: in_score_out
  doc: Name of output file to store scores. TSV format.
  type: File?
  inputBinding:
    prefix: --score_out
- id: in_summary_out
  doc: "Name of output file to store summaries of the\ncomponents. TSV format."
  type: File?
  inputBinding:
    prefix: --summary_out
- id: in_figure
  doc: "Name of output file to storescatter plots for 3\nprincipal components."
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
- id: out_load_out
  doc: Name of output file to store loadings. TSV format.
  type: File?
  outputBinding:
    glob: $(inputs.in_load_out)
- id: out_score_out
  doc: Name of output file to store scores. TSV format.
  type: File?
  outputBinding:
    glob: $(inputs.in_score_out)
- id: out_summary_out
  doc: "Name of output file to store summaries of the\ncomponents. TSV format."
  type: File?
  outputBinding:
    glob: $(inputs.in_summary_out)
- id: out_figure
  doc: "Name of output file to storescatter plots for 3\nprincipal components."
  type: File?
  outputBinding:
    glob: $(inputs.in_figure)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- principal_component_analysis.py

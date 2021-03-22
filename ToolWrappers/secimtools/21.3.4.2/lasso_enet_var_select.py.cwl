class: CommandLineTool
id: lasso_enet_var_select.py.cwl
inputs:
- id: in_a
  doc: '[-c COEFFICIENTS] [-f FLAGS]'
  type: string?
  inputBinding:
    prefix: -a
- id: in_r_script
  doc: Full path to R script if not using package version
  type: File?
  inputBinding:
    prefix: --rscript
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
- id: in_alpha
  doc: Alpha Value.
  type: string?
  inputBinding:
    prefix: --alpha
- id: in_coefficients
  doc: Path of en coefficients file.
  type: File?
  inputBinding:
    prefix: --coefficients
- id: in_flags
  doc: Path of en flag file.
  type: File?
  inputBinding:
    prefix: --flags
- id: in_plots
  doc: "Path of en coefficients file.\n"
  type: File?
  inputBinding:
    prefix: --plots
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- lasso_enet_var_select.py

class: CommandLineTool
id: parse_sdrf_convert_openms.cwl
inputs:
- id: in_sd_rf
  doc: SDRF file
  type: File?
  inputBinding:
    prefix: --sdrf
- id: in_raw
  doc: "Keep filenames in experimental design output\nas raw."
  type: string?
  inputBinding:
    prefix: --raw
- id: in_legacy
  doc: "legacy=Create artificial sample column not\nneeded in OpenMS 2.6."
  type: boolean?
  inputBinding:
    prefix: --legacy
- id: in_two_tables
  doc: Create one-table or two-tables format.
  type: boolean?
  inputBinding:
    prefix: --twotables
- id: in_verbose
  doc: Output debug information.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_conditions_from_columns
  doc: "Create conditions from provided (e.g.,\nfactor) columns."
  type: string?
  inputBinding:
    prefix: --conditionsfromcolumns
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sdrf-pipelines:0.0.13--py_0
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- convert-openms

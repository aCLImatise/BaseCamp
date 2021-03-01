class: CommandLineTool
id: datafunk_add_epi_week.cwl
inputs:
- id: in_input_metadata
  doc: Input CSV or TSV
  type: string?
  inputBinding:
    prefix: --input-metadata
- id: in_output_metadata
  doc: Input CSV or TSV
  type: string?
  inputBinding:
    prefix: --output-metadata
- id: in_column_name_convert
  doc: Column name to convert to epi week
  type: string?
  inputBinding:
    prefix: --date-column
- id: in_epi_week_column_name
  doc: Column name for epi week column
  type: string?
  inputBinding:
    prefix: --epi-week-column-name
- id: in_epi_day_column_name
  doc: "Column name for epi day column\n"
  type: string?
  inputBinding:
    prefix: --epi-day-column-name
- id: in_epi_column_name
  doc: ''
  type: string?
  inputBinding:
    prefix: --epi-column-name
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    prefix: --date_column
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- add_epi_week

class: CommandLineTool
id: anvi_export_table.cwl
inputs:
- id: in_table
  doc: 'Table name to export. (default: None)'
  type: string?
  inputBinding:
    prefix: --table
- id: in_list
  doc: "Gives a list of tables in a database and quits. If a\ntable is already declared\
    \ this time it lists all the\nfields in a given table, in case you would to export\n\
    only a specific list of fields from the table using\n--fields parameter. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_s__fields
  doc: "(S), --fields FIELD(S)\nFields to report. Use --list-tables parameter with\
    \ a\ntable name to see available fields You can list fields\nusing this notation:\
    \ --fields 'field_1, field_2, ...\nfield_N'. (default: None)"
  type: long?
  inputBinding:
    prefix: -f
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-export-table

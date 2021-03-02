class: CommandLineTool
id: anvi_export_table.cwl
inputs:
- id: in_table
  doc: Table name to export.
  type: string?
  inputBinding:
    prefix: --table
- id: in_list
  doc: "Gives a list of tables in a database and quits. If a\ntable is already declared\
    \ this time it lists all the\nfields in a given table, in case you would to export\n\
    only a specific list of fields from the table using\n--fields parameter."
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_s__fields
  doc: "(S), --fields FIELD(S)\nFields to report. Use --list-tables parameter with\
    \ a\ntable name to see available fields You can list fields\nusing this notation:\
    \ --fields 'field_1, field_2, ...\nfield_N'."
  type: long?
  inputBinding:
    prefix: -f
- id: in_output_file
  doc: "File path to store results.\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File path to store results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-export-table

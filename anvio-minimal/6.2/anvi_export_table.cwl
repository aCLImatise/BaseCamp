class: CommandLineTool
id: anvi_export_table.cwl
inputs:
- id: db
  doc: Anvi'o database to read from.
  type: string
  inputBinding:
    position: 0
- id: table
  doc: Table name to export.
  type: string
  inputBinding:
    prefix: --table
- id: list
  doc: Gives a list of tables in a database and quits. If a table is already declared
    this time it lists all the fields in a given table, in case you would to export
    only a specific list of fields from the table using --fields parameter.
  type: boolean
  inputBinding:
    prefix: --list
- id: f
  doc: "(S), --fields FIELD(S) Fields to report. Use --list-tables parameter with\
    \ a table name to see available fields You can list fields using this notation:\
    \ --fields 'field_1, field_2, ... field_N'."
  type: string
  inputBinding:
    prefix: -f
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-table

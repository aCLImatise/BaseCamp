#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-table
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-table
inputs:
- doc: Anvi'o database to read from.
  id: db
  inputBinding:
    position: 0
  type: string
- doc: Table name to export.
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: Gives a list of tables in a database and quits. If a table is already declared
    this time it lists all the fields in a given table, in case you would to export
    only a specific list of fields from the table using --fields parameter.
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: "(S), --fields FIELD(S) Fields to report. Use --list-tables parameter with\
    \ a table name to see available fields You can list fields using this notation:\
    \ --fields 'field_1, field_2, ... field_N'."
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File

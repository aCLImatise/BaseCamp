#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-items-order
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-items-order
inputs:
- doc: PATH, --db-path DB PATH An appropriate anvi'o database.
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: NAME     The name of the order you want to export. If you don't provide an
    order name, anvi'o will show you the names of all available orders in the database.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File

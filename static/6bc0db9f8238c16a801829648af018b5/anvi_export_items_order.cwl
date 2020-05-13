class: CommandLineTool
id: anvi_export_items_order.cwl
inputs:
- id: p
  doc: PATH, --db-path DB PATH An appropriate anvi'o database.
  type: string
  inputBinding:
    prefix: -p
- id: name
  doc: NAME     The name of the order you want to export. If you don't provide an
    order name, anvi'o will show you the names of all available orders in the database.
  type: string
  inputBinding:
    prefix: --name
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-items-order

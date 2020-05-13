class: CommandLineTool
id: get_gff_info_dbm_OPTIONS_GFF_FILE.cwl
inputs:
- id: output_dir
  doc: 'Directory for the database  [default: gff-dbm]'
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- dbm
- OPTIONS
- GFF_FILE

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_gff_info_dbm.cwl
inputs:
- id: output_dir
  doc: 'Directory for the database  [default: gff-dbm]'
  type: string
  inputBinding:
    prefix: --output-dir
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- dbm

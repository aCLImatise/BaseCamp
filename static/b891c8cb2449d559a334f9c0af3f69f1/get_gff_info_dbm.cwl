class: CommandLineTool
id: get_gff_info_dbm.cwl
inputs:
- id: in_output_dir
  doc: 'Directory for the database  [default: gff-dbm]'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- dbm

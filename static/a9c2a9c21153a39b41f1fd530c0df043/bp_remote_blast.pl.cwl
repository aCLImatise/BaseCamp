class: CommandLineTool
id: bp_remote_blast.pl.cwl
inputs:
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_remote_blast.pl

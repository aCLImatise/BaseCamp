class: CommandLineTool
id: bp_oligo_count.pl.cwl
inputs:
- id: in_oligo_count
  doc: ''
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
- bp_oligo_count.pl

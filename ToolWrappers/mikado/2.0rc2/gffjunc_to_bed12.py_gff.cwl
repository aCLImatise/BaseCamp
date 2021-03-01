class: CommandLineTool
id: gffjunc_to_bed12.py_gff.cwl
inputs:
- id: in_gff
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
- gffjunc_to_bed12.py
- gff

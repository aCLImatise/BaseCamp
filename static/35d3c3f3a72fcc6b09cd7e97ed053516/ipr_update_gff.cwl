class: CommandLineTool
id: ipr_update_gff.cwl
inputs:
- id: in_in_place
  doc: Modify GFF3 files inplace, otherwise it prints to STDOUT
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
- ipr_update_gff

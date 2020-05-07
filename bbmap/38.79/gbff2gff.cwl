class: CommandLineTool
id: gbff2gff.sh.cwl
inputs:
- id: gb_ff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gbff2gff.sh

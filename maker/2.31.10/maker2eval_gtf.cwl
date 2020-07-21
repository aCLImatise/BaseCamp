class: CommandLineTool
id: ../../../maker2eval_gtf.cwl
inputs:
- id: maker_two_eval
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maker_gff_three_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maker2eval_gtf

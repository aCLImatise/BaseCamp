class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ssu_esl_alimerge_alignment file 2.cwl
inputs:
- id: ssu_esl_ali_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_file_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: alignment_file_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimerge
- alignment file 2

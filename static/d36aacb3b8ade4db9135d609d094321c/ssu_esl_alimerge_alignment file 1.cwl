class: CommandLineTool
id: ssu_esl_alimerge_alignment file 1.cwl
inputs:
- id: alignment_file_2
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimerge
- alignment file 1

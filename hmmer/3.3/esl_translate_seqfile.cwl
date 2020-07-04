class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_translate_seqfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-translate
- seqfile

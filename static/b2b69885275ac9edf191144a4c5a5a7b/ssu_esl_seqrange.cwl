class: CommandLineTool
id: ../../../ssu_esl_seqrange.cwl
inputs:
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-seqrange

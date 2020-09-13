class: CommandLineTool
id: ../../../ssu_esl_seqrange.cwl
inputs:
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-esl-seqrange

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_sfetch.cwl
inputs:
- id: output_sequences_file
  doc: ': output sequences to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: output_sequence_file
  doc: ': output sequence to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: rename_sequence_s
  doc: ': rename the sequence <s>'
  type: string
  inputBinding:
    prefix: -n
- id: reverse_complement_seqs
  doc: ': reverse complement the seq(s)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-sfetch

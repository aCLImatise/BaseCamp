class: CommandLineTool
id: phmm.cwl
inputs:
- id: in_log_probability
  doc: "Specify that program should output probabilities as logs (base 10).\nDefault\
    \ is to output probabilties."
  type: boolean
  inputBinding:
    prefix: --logprobability
- id: in_max_likelihood
  doc: "Specify that program should output a maximum likelihood alignment.\nDefault\
    \ is to output pairwise probabilities."
  type: boolean
  inputBinding:
    prefix: --maxlikelihood
- id: in_seq_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_seq_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- phmm

class: CommandLineTool
id: ../../../PLEK.py.cwl
inputs:
- id: in_is_rm_tempfile
  doc: ''
  type: long
  inputBinding:
    prefix: -isrmtempfile
- id: in_fast_a
  doc: The name of a fasta file, its sequences are to be predicted.
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_out
  doc: "The file name for the results of prediction. Predicted positive\nsamples are\
    \ labeled as \"Coding\", and negative as \"Non-coding\"."
  type: boolean
  inputBinding:
    prefix: -out
- id: in_thread
  doc: "(Optional) The number of threads for running the PLEK program.\nThe bigger\
    \ this number is, the faster PLEK runs. Default value: 5."
  type: boolean
  inputBinding:
    prefix: -thread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PLEK.py

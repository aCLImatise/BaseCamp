class: CommandLineTool
id: ../../../hmmeralign_seqfile.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_hmmer_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmeralign
- seqfile

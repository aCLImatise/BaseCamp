class: CommandLineTool
id: ../../../nhmmer_target seqfile.cwl
inputs:
- id: n_hmmer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_hmm_file_vertical_line_align_file_vertical_line_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nhmmer
- target seqfile

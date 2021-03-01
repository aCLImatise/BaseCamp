class: CommandLineTool
id: nhmmer_target seqfile.cwl
inputs:
- id: in_n_hmmer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query_hmm_file_vertical_line_align_file_vertical_line_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nhmmer
- target seqfile

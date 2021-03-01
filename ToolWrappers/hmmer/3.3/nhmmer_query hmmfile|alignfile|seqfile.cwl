class: CommandLineTool
id: nhmmer_query hmmfile|alignfile|seqfile.cwl
inputs:
- id: in_target_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nhmmer
- query hmmfile|alignfile|seqfile

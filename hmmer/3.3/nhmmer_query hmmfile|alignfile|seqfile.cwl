class: CommandLineTool
id: ../../../nhmmer_query hmmfile|alignfile|seqfile.cwl
inputs:
- id: target_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nhmmer
- query hmmfile|alignfile|seqfile

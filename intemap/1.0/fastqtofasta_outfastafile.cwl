class: CommandLineTool
id: fastqtofasta_outfastafile.cwl
inputs:
- id: in_fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqtofasta
- outfastafile

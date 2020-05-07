class: CommandLineTool
id: fastqtofasta_infastqfile.cwl
inputs:
- id: out_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqtofasta
- infastqfile

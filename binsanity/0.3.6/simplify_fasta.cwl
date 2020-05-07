class: CommandLineTool
id: simplify_fasta.cwl
inputs:
- id: i
  doc: Specify the name of the input file
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: Specify the name for the output file
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- simplify-fasta

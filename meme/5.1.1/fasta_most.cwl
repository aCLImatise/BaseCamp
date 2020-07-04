class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta_most.cwl
inputs:
- id: min
  doc: <length>  minimum length to accept
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: <length>  maximum length to accept
  type: boolean
  inputBinding:
    prefix: -max
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-most

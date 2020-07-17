class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lorikeet_kmer.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    prefix: --reference
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- kmer

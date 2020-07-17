class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/promer.cwl
inputs:
- id: matrix_set_number
  doc: '|matrix       Set the alignment matrix number to 1 [BLOSUM 45], 2 [BLOSUM
    62] or 3 [BLOSUM 80] (default 2)'
  type: boolean
  inputBinding:
    prefix: -x
- id: reference
  doc: Set the input reference multi-FASTA DNA file
  type: string
  inputBinding:
    position: 0
- id: query
  doc: Set the input query multi-FASTA DNA file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- promer

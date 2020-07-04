class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_filterpair.cwl
inputs:
- id: filter_pair
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_q_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: paired_one
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: paired_two
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: unpaired
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: sorted
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_filterpair

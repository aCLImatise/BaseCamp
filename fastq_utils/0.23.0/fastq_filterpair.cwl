class: CommandLineTool
id: fastq_filterpair.cwl
inputs:
- id: filter_pair
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fastq1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fastq2
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: paired_1
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: paired_2
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

class: CommandLineTool
id: crTreeSearchBed_end.cwl
inputs:
- id: file_bed
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: index_cr
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- crTreeSearchBed
- end

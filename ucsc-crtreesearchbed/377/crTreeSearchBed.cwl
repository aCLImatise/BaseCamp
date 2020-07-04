class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crTreeSearchBed.cwl
inputs:
- id: file_dot_bed
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: index_do_tcr
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

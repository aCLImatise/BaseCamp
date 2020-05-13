class: CommandLineTool
id: crTreeSearchBed_file.bed_end.cwl
inputs:
- id: index_cr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- crTreeSearchBed
- file.bed
- end

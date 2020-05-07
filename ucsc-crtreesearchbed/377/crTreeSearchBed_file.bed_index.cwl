class: CommandLineTool
id: crTreeSearchBed_file.bed_index.cr_end.cwl
inputs:
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- crTreeSearchBed
- file.bed
- index.cr
- end

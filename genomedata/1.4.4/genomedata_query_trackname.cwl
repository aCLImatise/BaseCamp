class: CommandLineTool
id: genomedata_query_trackname.cwl
inputs:
- id: gd_archive
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: begin
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
- genomedata-query
- trackname

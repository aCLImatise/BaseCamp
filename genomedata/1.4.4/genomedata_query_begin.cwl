class: CommandLineTool
id: ../../../genomedata_query_begin.cwl
inputs:
- id: genome_data_query
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gd_archive
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: begin
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-query
- begin

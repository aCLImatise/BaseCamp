class: CommandLineTool
id: genomedata_query_gdarchive.cwl
inputs:
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
- id: track_name
  doc: track name
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: chromosome name
  type: string
  inputBinding:
    position: 2
- id: begin
  doc: chromosome start
  type: string
  inputBinding:
    position: 3
- id: end
  doc: chromosome end
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-query
- gdarchive

class: CommandLineTool
id: genomedata_query_end.cwl
inputs:
- id: in_genome_data_query
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gd_archive
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_track_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_chrom
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_begin
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0
cwlVersion: v1.1
baseCommand:
- genomedata-query
- end

class: CommandLineTool
id: extract_transcript_to_gene_map_from_trinity.cwl
inputs:
- id: in_trinity_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract-transcript-to-gene-map-from-trinity

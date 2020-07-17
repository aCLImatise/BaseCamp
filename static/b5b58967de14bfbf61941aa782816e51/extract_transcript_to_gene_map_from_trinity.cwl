class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_transcript_to_gene_map_from_trinity.cwl
inputs:
- id: trinity_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: map_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- extract-transcript-to-gene-map-from-trinity

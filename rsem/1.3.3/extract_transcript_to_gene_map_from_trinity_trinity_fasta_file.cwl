class: CommandLineTool
id: extract_transcript_to_gene_map_from_trinity_trinity_fasta_file.cwl
inputs:
- id: map_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extract-transcript-to-gene-map-from-trinity
- trinity_fasta_file

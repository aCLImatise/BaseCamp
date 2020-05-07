class: CommandLineTool
id: alignTranscripts1.0.cwl
inputs:
- id: bed_a
  doc: bed file A
  type: string
  inputBinding:
    position: 0
- id: genome_fasta_a
  doc: fasta file A
  type: string
  inputBinding:
    position: 1
- id: be_db
  doc: bed file B
  type: string
  inputBinding:
    position: 2
- id: genome_fast_ab
  doc: fasta file B
  type: string
  inputBinding:
    position: 3
- id: out_prefix
  doc: out prefix
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- alignTranscripts1.0

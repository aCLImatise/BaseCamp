class: CommandLineTool
id: gtf_to_fasta_genome.fa.cwl
inputs:
- id: transcripts_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf_to_fasta
- genome.fa

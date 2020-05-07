class: CommandLineTool
id: gtf_to_fasta_transcripts.gtf_genome.fa.cwl
inputs:
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf_to_fasta
- transcripts.gtf
- genome.fa

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gtf_to_fasta.cwl
inputs:
- id: transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_dot_fa
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

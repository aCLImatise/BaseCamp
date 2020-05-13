class: CommandLineTool
id: gtf_to_fasta_transcripts.gtf_out_file.cwl
inputs:
- id: genome_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf_to_fasta
- transcripts.gtf
- out_file

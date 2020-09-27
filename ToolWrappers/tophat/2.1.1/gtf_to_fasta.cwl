class: CommandLineTool
id: gtf_to_fasta.cwl
inputs:
- id: in_transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gtf_to_fasta

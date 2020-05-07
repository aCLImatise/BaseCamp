class: CommandLineTool
id: genie_fasta_faidx.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- fasta
- faidx

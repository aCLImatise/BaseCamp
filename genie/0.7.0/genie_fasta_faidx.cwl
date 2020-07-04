class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genie_fasta_faidx.cwl
inputs:
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- fasta
- faidx

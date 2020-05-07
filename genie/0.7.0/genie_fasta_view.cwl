class: CommandLineTool
id: genie_fasta_view.cwl
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
- id: scope
  doc: Scope chr:begin-end (*require)
  type: string
  inputBinding:
    prefix: --scope
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- fasta
- view

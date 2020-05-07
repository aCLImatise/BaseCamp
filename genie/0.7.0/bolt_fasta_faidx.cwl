class: CommandLineTool
id: bolt_fasta_faidx.cwl
inputs:
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fa_idx
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- fasta
- faidx

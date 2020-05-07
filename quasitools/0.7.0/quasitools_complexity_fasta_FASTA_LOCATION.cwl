class: CommandLineTool
id: quasitools_complexity_fasta_FASTA_LOCATION.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_location
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- fasta
- FASTA_LOCATION

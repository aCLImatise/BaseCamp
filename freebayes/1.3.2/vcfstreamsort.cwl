class: CommandLineTool
id: vcfstreamsort.cwl
inputs:
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: window
  doc: number of sites to sort (default 10000)
  type: string
  inputBinding:
    prefix: --window
- id: all
  doc: load all sites and then sort in memory
  type: boolean
  inputBinding:
    prefix: --all
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfstreamsort

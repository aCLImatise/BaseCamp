class: CommandLineTool
id: ../../../sqStoreCreate.cwl
inputs:
- id: technology_status
  doc: 'seqFile1 [seqFile2] [...] '
  type: string
  inputBinding:
    prefix: -technology-status
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: minlength
  doc: ''
  type: string
  inputBinding:
    prefix: -minlength
- id: genome_size
  doc: ''
  type: string
  inputBinding:
    prefix: -genomesize
- id: coverage
  doc: ''
  type: string
  inputBinding:
    prefix: -coverage
- id: pac_bio_raw
  doc: ''
  type: File[]
  inputBinding:
    prefix: -pacbio-raw
outputs: []
cwlVersion: v1.1
baseCommand:
- sqStoreCreate

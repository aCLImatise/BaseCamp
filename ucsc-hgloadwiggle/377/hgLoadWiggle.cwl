class: CommandLineTool
id: ../../../hgLoadWiggle.cwl
inputs:
- id: tmpdir
  doc: '- path to directory for creation of temporary .tab file - which will be removed
    after loading'
  type: File
  inputBinding:
    prefix: -tmpDir
- id: verbose
  doc: 'N=2 see # of lines input and SQL create statement, N=3 see chrom size info,
    N=4 see details on chrom size info'
  type: string
  inputBinding:
    prefix: -verbose
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadWiggle

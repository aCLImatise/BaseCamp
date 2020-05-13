class: CommandLineTool
id: splitMEM.cwl
inputs:
- id: file
  doc: Load sequence from file
  type: File
  inputBinding:
    prefix: -file
- id: mem
  doc: 'Locate MEMs at least this long '
  type: string
  inputBinding:
    prefix: -mem
- id: many_mems
  doc: File of minimum MEM lengths
  type: File
  inputBinding:
    prefix: -manyMEMs
- id: cdg
  doc: Filename of compressed de Bruijn graph
  type: string
  inputBinding:
    prefix: -cdg
- id: multi_fa
  doc: Indicates the input file is a multifasta file for pan-genome analysis
  type: boolean
  inputBinding:
    prefix: -multiFa
outputs: []
cwlVersion: v1.1
baseCommand:
- splitMEM

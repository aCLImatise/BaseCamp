class: CommandLineTool
id: splitMEM.cwl
inputs:
- id: in_file
  doc: Load sequence from file
  type: File
  inputBinding:
    prefix: -file
- id: in_mem
  doc: Locate MEMs at least this long
  type: string
  inputBinding:
    prefix: -mem
- id: in_many_mems
  doc: File of minimum MEM lengths
  type: File
  inputBinding:
    prefix: -manyMEMs
- id: in_cdg
  doc: Filename of compressed de Bruijn graph
  type: File
  inputBinding:
    prefix: -cdg
- id: in_multi_fa
  doc: Indicates the input file is a multifasta file for pan-genome analysis
  type: boolean
  inputBinding:
    prefix: -multiFa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitMEM

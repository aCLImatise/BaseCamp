class: CommandLineTool
id: spindex.cwl
inputs:
- id: v
  doc: '[ --version ]             display version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: k
  doc: '[ --kmersize ] arg (=8)   K-mer size'
  type: boolean
  inputBinding:
    prefix: -k
- id: d
  doc: '[ --database ] arg        path to the fasta format reference sequence  database'
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: '[ --processors ] arg (=1) number of processor threads'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- spindex

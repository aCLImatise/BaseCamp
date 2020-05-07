class: CommandLineTool
id: taxmapper_search.cwl
inputs:
- id: forward
  doc: Forward reads in fasta or fastq format
  type: File
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Reads in fasta or fastq format [optional]
  type: File
  inputBinding:
    prefix: --reverse
- id: rap_search
  doc: 'Rapsearch path, version >=2.24 [default: rapsearch set in PATH variable]'
  type: string
  inputBinding:
    prefix: --rapsearch
- id: database
  doc: Path to RAPSearch database index
  type: string
  inputBinding:
    prefix: --database
- id: out
  doc: 'Basename for output files [default: <input>_hits]'
  type: string
  inputBinding:
    prefix: --out
- id: threads
  doc: 'Number of threads [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- search

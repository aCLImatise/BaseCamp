class: CommandLineTool
id: parallel_all_against_all_blastp.cwl
inputs:
- id: file_faa
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: p
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: o
  doc: output filename for blast results [blast_results]
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: makeblastdb executable [makeblastdb]
  type: string
  inputBinding:
    prefix: -m
- id: b
  doc: blastp executable [blastp]
  type: string
  inputBinding:
    prefix: -b
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_all_against_all_blastp

class: CommandLineTool
id: iterative_cdhit.cwl
inputs:
- id: m
  doc: input FASTA file of protein sequences [_combined_files]
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: n
  doc: number of isolates [1]
  type: long
  inputBinding:
    prefix: -n
- id: c
  doc: cd-hit output filename [_clustered]
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: output filename for filtered sequences [_clustered_filtered.fa]
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: lower bound percentage identity [98.0]
  type: double
  inputBinding:
    prefix: -l
- id: u
  doc: upper bound percentage identity [99.0]
  type: double
  inputBinding:
    prefix: -u
- id: s
  doc: step size for percentage identity [0.5]
  type: double
  inputBinding:
    prefix: -s
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- iterative_cdhit

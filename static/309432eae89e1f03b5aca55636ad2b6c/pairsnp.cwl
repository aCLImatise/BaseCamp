class: CommandLineTool
id: pairsnp.cwl
inputs:
- id: v
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: Output in sparse matrix form (i,j,distance).
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: Distance threshold for sparse output. Only distances <= d will be returned.
  type: boolean
  inputBinding:
    prefix: -d
- id: k
  doc: Will on return the k nearest neighbours for each sample in sparse output.
  type: boolean
  inputBinding:
    prefix: -k
- id: c
  doc: Output CSV instead of TSV
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: Count comparisons with Ns (off by default)
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: Number of threads to use (default=1)
  type: boolean
  inputBinding:
    prefix: -t
- id: b
  doc: Blank top left corner cell instead of 'pairsnp 0.2.0'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- pairsnp

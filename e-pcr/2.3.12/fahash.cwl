class: CommandLineTool
id: fahash.cwl
inputs:
- id: t
  doc: Print word usage statistics for hash-file
  type: string
  inputBinding:
    prefix: -T
- id: b
  doc: Build hash tables (hash-file) from sequence files,
  type: string
  inputBinding:
    prefix: -b
- id: w
  doc: Set word size when building hash tables
  type: string
  inputBinding:
    prefix: -w
- id: f
  doc: Set discontiguity when building hash tables
  type: string
  inputBinding:
    prefix: -f
- id: k
  doc: Skip repeats when building hash-file
  type: boolean
  inputBinding:
    prefix: -k
- id: f
  doc: ',max      Set watermarks for fragment size (in Mb) (version 1 only)'
  type: long
  inputBinding:
    prefix: -F
- id: c
  doc: Set cache size (version 2 only)
  type: string
  inputBinding:
    prefix: -c
- id: v
  doc: Use format version (1|2, 2 is default)
  type: string
  inputBinding:
    prefix: -v
- id: o
  doc: Write output to file `outfile'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fahash

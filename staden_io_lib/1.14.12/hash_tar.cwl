class: CommandLineTool
id: hash_tar.cwl
inputs:
- id: a
  doc: 'Tar archive filename: use if reading from stdin'
  type: string
  inputBinding:
    prefix: -a
- id: a
  doc: Force no archive name (eg will concat to archive itself)
  type: boolean
  inputBinding:
    prefix: -A
- id: o
  doc: Set arc. offset to size of hash (use when prepending)
  type: boolean
  inputBinding:
    prefix: -O
- id: v
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Index directory names (useless?)
  type: boolean
  inputBinding:
    prefix: -d
- id: h
  doc: Set tar entry 'name' to be a file header
  type: string
  inputBinding:
    prefix: -h
- id: f
  doc: Set tar entry 'name' to be a file footer
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: Use only the filename portion of a pathname
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: Reads lines of 'old new' and renames entries before indexing.
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- hash_tar

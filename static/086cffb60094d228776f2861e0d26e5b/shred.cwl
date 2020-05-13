class: CommandLineTool
id: shred.cwl
inputs:
- id: force
  doc: change permissions to allow writing if necessary
  type: boolean
  inputBinding:
    prefix: --force
- id: iterations
  doc: overwrite N times instead of the default (3)
  type: string
  inputBinding:
    prefix: --iterations
- id: random_source
  doc: get random bytes from FILE
  type: File
  inputBinding:
    prefix: --random-source
- id: size
  doc: shred this many bytes (suffixes like K, M, G accepted)
  type: string
  inputBinding:
    prefix: --size
- id: u
  doc: truncate and remove file after overwriting
  type: boolean
  inputBinding:
    prefix: -u
- id: remove
  doc: '[=HOW]  like -u but give control on HOW to delete;  See below'
  type: boolean
  inputBinding:
    prefix: --remove
- id: verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
- id: exact
  doc: do not round file sizes up to the next full block; this is the default for
    non-regular files
  type: boolean
  inputBinding:
    prefix: --exact
- id: zero
  doc: add a final overwrite with zeros to hide shredding
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- shred

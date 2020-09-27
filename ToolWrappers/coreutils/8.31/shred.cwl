class: CommandLineTool
id: shred.cwl
inputs:
- id: in_force
  doc: change permissions to allow writing if necessary
  type: boolean
  inputBinding:
    prefix: --force
- id: in_iterations
  doc: overwrite N times instead of the default (3)
  type: long
  inputBinding:
    prefix: --iterations
- id: in_random_source
  doc: get random bytes from FILE
  type: File
  inputBinding:
    prefix: --random-source
- id: in_size
  doc: shred this many bytes (suffixes like K, M, G accepted)
  type: long
  inputBinding:
    prefix: --size
- id: in_deallocate_remove_file
  doc: deallocate and remove file after overwriting
  type: boolean
  inputBinding:
    prefix: -u
- id: in_remove
  doc: '[=HOW]  like -u but give control on HOW to delete;  See below'
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_exact
  doc: "do not round file sizes up to the next full block;\nthis is the default for\
    \ non-regular files"
  type: boolean
  inputBinding:
    prefix: --exact
- id: in_add_final_overwrite
  doc: add a final overwrite with zeros to hide shredding
  type: boolean
  inputBinding:
    prefix: --zero
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shred

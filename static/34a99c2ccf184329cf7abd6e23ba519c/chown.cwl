class: CommandLineTool
id: chown.cwl
inputs:
- id: no_preserve_root
  doc: do not treat '/' specially (the default)
  type: boolean
  inputBinding:
    prefix: --no-preserve-root
- id: preserve_root
  doc: fail to operate recursively on '/'
  type: boolean
  inputBinding:
    prefix: --preserve-root
- id: reference
  doc: use RFILE's owner and group rather than specifying OWNER:GROUP values
  type: string
  inputBinding:
    prefix: --reference
- id: recursive
  doc: operate on files and directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: h
  doc: if a command line argument is a symbolic link to a directory, traverse it
  type: boolean
  inputBinding:
    prefix: -H
- id: l
  doc: traverse every symbolic link to a directory encountered
  type: boolean
  inputBinding:
    prefix: -L
- id: p
  doc: do not traverse any symbolic links (default)
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- chown

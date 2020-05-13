class: CommandLineTool
id: chgrp.cwl
inputs:
- id: changes
  doc: like verbose but report only when a change is made
  type: boolean
  inputBinding:
    prefix: --changes
- id: silent
  doc: suppress most error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: output a diagnostic for every file processed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: dereference
  doc: affect the referent of each symbolic link (this is the default), rather than
    the symbolic link itself
  type: boolean
  inputBinding:
    prefix: --dereference
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
  doc: use RFILE's group rather than specifying a GROUP value
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
- chgrp

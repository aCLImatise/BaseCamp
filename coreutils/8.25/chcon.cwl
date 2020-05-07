class: CommandLineTool
id: chcon.cwl
inputs:
- id: dereference
  doc: affect the referent of each symbolic link (this is the default), rather than
    the symbolic link itself
  type: boolean
  inputBinding:
    prefix: --dereference
- id: user
  doc: set user USER in the target security context
  type: string
  inputBinding:
    prefix: --user
- id: role
  doc: set role ROLE in the target security context
  type: string
  inputBinding:
    prefix: --role
- id: type
  doc: set type TYPE in the target security context
  type: string
  inputBinding:
    prefix: --type
- id: range
  doc: set range RANGE in the target security context
  type: string
  inputBinding:
    prefix: --range
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
  doc: use RFILE's security context rather than specifying a CONTEXT value
  type: string
  inputBinding:
    prefix: --reference
- id: recursive
  doc: operate on files and directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: verbose
  doc: output a diagnostic for every file processed
  type: boolean
  inputBinding:
    prefix: --verbose
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
- chcon

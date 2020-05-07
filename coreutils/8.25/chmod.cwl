class: CommandLineTool
id: chmod.cwl
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
  doc: use RFILE's mode instead of MODE values
  type: string
  inputBinding:
    prefix: --reference
- id: recursive
  doc: change files and directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
outputs: []
cwlVersion: v1.1
baseCommand:
- chmod

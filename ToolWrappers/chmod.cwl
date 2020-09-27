class: CommandLineTool
id: chmod.cwl
inputs:
- id: in_changes
  doc: like verbose but report only when a change is made
  type: boolean
  inputBinding:
    prefix: --changes
- id: in_silent
  doc: suppress most error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: output a diagnostic for every file processed
  type: File
  inputBinding:
    prefix: --verbose
- id: in_no_preserve_root
  doc: do not treat '/' specially (the default)
  type: boolean
  inputBinding:
    prefix: --no-preserve-root
- id: in_preserve_root
  doc: fail to operate recursively on '/'
  type: boolean
  inputBinding:
    prefix: --preserve-root
- id: in_reference
  doc: use RFILE's mode instead of MODE values
  type: File
  inputBinding:
    prefix: --reference
- id: in_recursive
  doc: change files and directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: output a diagnostic for every file processed
  type: File
  outputBinding:
    glob: $(inputs.in_verbose)
cwlVersion: v1.1
baseCommand:
- chmod

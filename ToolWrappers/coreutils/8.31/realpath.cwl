class: CommandLineTool
id: realpath.cwl
inputs:
- id: in_canonicalize_existing
  doc: all components of the path must exist
  type: boolean?
  inputBinding:
    prefix: --canonicalize-existing
- id: in_canonicalize_missing
  doc: no path components need exist or be a directory
  type: boolean?
  inputBinding:
    prefix: --canonicalize-missing
- id: in_logical
  doc: resolve '..' components before symlinks
  type: boolean?
  inputBinding:
    prefix: --logical
- id: in_physical
  doc: resolve symlinks as encountered (default)
  type: boolean?
  inputBinding:
    prefix: --physical
- id: in_quiet
  doc: suppress most error messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_relative_to
  doc: print the resolved path relative to DIR
  type: File?
  inputBinding:
    prefix: --relative-to
- id: in_relative_base
  doc: print absolute paths unless paths below DIR
  type: string?
  inputBinding:
    prefix: --relative-base
- id: in_no_symlinks
  doc: don't expand symlinks
  type: boolean?
  inputBinding:
    prefix: --no-symlinks
- id: in_end_output_line
  doc: end each output line with NUL, not newline
  type: boolean?
  inputBinding:
    prefix: --zero
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- realpath

class: CommandLineTool
id: realpath.cwl
inputs:
- id: canonicalize_existing
  doc: all components of the path must exist
  type: boolean
  inputBinding:
    prefix: --canonicalize-existing
- id: canonicalize_missing
  doc: no path components need exist or be a directory
  type: boolean
  inputBinding:
    prefix: --canonicalize-missing
- id: logical
  doc: resolve '..' components before symlinks
  type: boolean
  inputBinding:
    prefix: --logical
- id: physical
  doc: resolve symlinks as encountered (default)
  type: boolean
  inputBinding:
    prefix: --physical
- id: quiet
  doc: suppress most error messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: relative_to
  doc: print the resolved path relative to FILE
  type: File
  inputBinding:
    prefix: --relative-to
- id: relative_base
  doc: print absolute paths unless paths below FILE
  type: File
  inputBinding:
    prefix: --relative-base
- id: no_symlinks
  doc: don't expand symlinks
  type: boolean
  inputBinding:
    prefix: --no-symlinks
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- realpath

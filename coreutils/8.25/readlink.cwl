class: CommandLineTool
id: readlink.cwl
inputs:
- id: canonicalize
  doc: canonicalise by following every symlink in every component of the given name
    recursively; all but the last component must exist
  type: boolean
  inputBinding:
    prefix: --canonicalize
- id: canonicalize_existing
  doc: canonicalise by following every symlink in every component of the given name
    recursively, all components must exist
  type: boolean
  inputBinding:
    prefix: --canonicalize-existing
- id: canonicalize_missing
  doc: canonicalize by following every symlink in every component of the given name
    recursively, without requirements on components existence
  type: boolean
  inputBinding:
    prefix: --canonicalize-missing
- id: no_new_line
  doc: do not output the trailing delimiter
  type: boolean
  inputBinding:
    prefix: --no-newline
- id: silent
  doc: suppress most error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: report error messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- readlink

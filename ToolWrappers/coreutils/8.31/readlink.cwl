class: CommandLineTool
id: readlink.cwl
inputs:
- id: in_canonicalize
  doc: "canonicalize by following every symlink in\nevery component of the given name\
    \ recursively;\nall but the last component must exist"
  type: boolean?
  inputBinding:
    prefix: --canonicalize
- id: in_canonicalize_existing
  doc: "canonicalize by following every symlink in\nevery component of the given name\
    \ recursively,\nall components must exist"
  type: boolean?
  inputBinding:
    prefix: --canonicalize-existing
- id: in_canonicalize_missing
  doc: "canonicalize by following every symlink in\nevery component of the given name\
    \ recursively,\nwithout requirements on components existence"
  type: boolean?
  inputBinding:
    prefix: --canonicalize-missing
- id: in_no_new_line
  doc: do not output the trailing delimiter
  type: boolean?
  inputBinding:
    prefix: --no-newline
- id: in_silent
  doc: suppress most error messages (on by default)
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: report error messages
  type: boolean?
  inputBinding:
    prefix: --verbose
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
- readlink

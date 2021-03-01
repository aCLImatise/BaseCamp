class: CommandLineTool
id: rmdir.cwl
inputs:
- id: in_ignore_fail_on_non_empty
  doc: "ignore each failure that is solely because a directory\nis non-empty"
  type: boolean?
  inputBinding:
    prefix: --ignore-fail-on-non-empty
- id: in_parents
  doc: "remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\nsimilar to\
    \ 'rmdir a/b/c a/b a'"
  type: boolean?
  inputBinding:
    prefix: --parents
- id: in_verbose
  doc: output a diagnostic for every directory processed
  type: Directory?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: output a diagnostic for every directory processed
  type: Directory?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- rmdir

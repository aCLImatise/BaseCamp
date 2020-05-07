class: CommandLineTool
id: rmdir.cwl
inputs:
- id: ignore_fail_on_non_empty
  doc: ignore each failure that is solely because a directory is non-empty
  type: boolean
  inputBinding:
    prefix: --ignore-fail-on-non-empty
- id: parents
  doc: remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir
    a/b/c a/b a'
  type: boolean
  inputBinding:
    prefix: --parents
- id: verbose
  doc: output a diagnostic for every directory processed
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rmdir

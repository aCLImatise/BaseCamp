class: CommandLineTool
id: ptargrep_archive.cwl
inputs:
- id: in_basename
  doc: ignore directory paths from archive
  type: boolean
  inputBinding:
    prefix: --basename
- id: in_ignore_case
  doc: do case-insensitive pattern matching
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: in_list_only
  doc: list matching filenames rather than extracting matches
  type: boolean
  inputBinding:
    prefix: --list-only
- id: in_verbose
  doc: write debugging message to STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_p_tar_grep
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tar_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ptargrep
- archive

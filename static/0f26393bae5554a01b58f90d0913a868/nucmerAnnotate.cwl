class: CommandLineTool
id: nucmerAnnotate.cwl
inputs:
- id: in_ignore
  doc: '- Maximum length of the end sequence unaligned (Default: 20 bp)'
  type: long
  inputBinding:
    prefix: -ignore
- id: in_all
  doc: '- Display all alignments (Default: only the annotated ones)'
  type: boolean
  inputBinding:
    prefix: -all
- id: in_loose
  doc: '- Looser annotation'
  type: boolean
  inputBinding:
    prefix: -loose
- id: in_no_id
  doc: '- Filter out identity alignments (sequences with the same id)'
  type: boolean
  inputBinding:
    prefix: -noid
- id: in_version_print_version
  doc: '|version      - Print the version and exit;'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_depend
  doc: '- Print the program and database dependency list;'
  type: boolean
  inputBinding:
    prefix: -depend
- id: in_debug
  doc: '- Set the debug <level> (0, non-debug by default);'
  type: long
  inputBinding:
    prefix: -debug
- id: in_coords_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nucmerAnnotate

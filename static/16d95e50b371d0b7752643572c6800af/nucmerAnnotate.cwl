class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nucmerAnnotate.cwl
inputs:
- id: ignore
  doc: '- Maximum length of the end sequence unaligned (Default: 20 bp)'
  type: string
  inputBinding:
    prefix: -ignore
- id: all
  doc: '- Display all alignments (Default: only the annotated ones)'
  type: boolean
  inputBinding:
    prefix: -all
- id: loose
  doc: '- Looser annotation'
  type: boolean
  inputBinding:
    prefix: -loose
- id: no_id
  doc: '- Filter out identity alignments (sequences with the same id)     '
  type: boolean
  inputBinding:
    prefix: -noid
- id: version_print_version
  doc: '|version      - Print the version and exit;'
  type: boolean
  inputBinding:
    prefix: -V
- id: depend
  doc: '- Print the program and database dependency list;'
  type: boolean
  inputBinding:
    prefix: -depend
- id: debug
  doc: '- Set the debug <level> (0, non-debug by default); '
  type: string
  inputBinding:
    prefix: -debug
- id: coords_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmerAnnotate

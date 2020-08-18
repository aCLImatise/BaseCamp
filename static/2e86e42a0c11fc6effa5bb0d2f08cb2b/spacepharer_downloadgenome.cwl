class: CommandLineTool
id: ../../../spacepharer_downloadgenome.cwl
inputs:
- id: reverse_set_db
  doc: Create additional setDB with reversed fragments to compute under null [0,1]
    [1]
  type: long
  inputBinding:
    prefix: --reverse-setdb
- id: verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
- id: name_slash_download_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- spacepharer
- downloadgenome

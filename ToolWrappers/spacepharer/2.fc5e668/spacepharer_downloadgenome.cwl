class: CommandLineTool
id: spacepharer_downloadgenome.cwl
inputs:
- id: in_reverse_set_db
  doc: Create additional setDB with reversed fragments to compute under null [0,1]
    [1]
  type: long?
  inputBinding:
    prefix: --reverse-setdb
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_name
  doc: '- GenBank_phage_2018_09 '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- spacepharer
- downloadgenome

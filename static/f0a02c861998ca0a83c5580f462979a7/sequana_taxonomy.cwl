class: CommandLineTool
id: sequana_taxonomy.cwl
inputs:
- id: in_databases
  doc: "/home/user/.config/sequana/kraken_toydb\n--show-html --thread 4"
  type: boolean
  inputBinding:
    prefix: --databases
- id: in_welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_taxonomy

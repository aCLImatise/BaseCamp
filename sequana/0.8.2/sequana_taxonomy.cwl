class: CommandLineTool
id: sequana_taxonomy.cwl
inputs:
- id: databases
  doc: /home/user/.config/sequana/kraken_toydb
  type: boolean
  inputBinding:
    prefix: --databases
- id: show_html
  doc: '4'
  type: boolean
  inputBinding:
    prefix: --show-html
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_taxonomy

class: CommandLineTool
id: psascan.cwl
inputs:
- id: gap
  doc: 'specify the file holding the gap array (default: FILE.sa5.gap)'
  type: string
  inputBinding:
    prefix: --gap
- id: mem
  doc: 'limit RAM usage to LIMIT MiB (default: 3072)'
  type: string
  inputBinding:
    prefix: --mem
- id: output
  doc: 'specify the output file (default: FILE.sa5)'
  type: string
  inputBinding:
    prefix: --output
- id: verbose
  doc: print detailed information during internal sufsort
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- psascan

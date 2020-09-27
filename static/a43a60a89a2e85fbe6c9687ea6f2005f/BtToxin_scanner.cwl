class: CommandLineTool
id: BtToxin_scanner.cwl
inputs:
- id: in_exit
  doc: '[--threads (INT)]             Number of threads to be used ( Default 4 )'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- BtToxin_scanner

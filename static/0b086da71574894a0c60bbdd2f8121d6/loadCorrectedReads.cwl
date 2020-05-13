class: CommandLineTool
id: loadCorrectedReads.cwl
inputs:
- id: s
  doc: Path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: Path to a correction store
  type: string
  inputBinding:
    prefix: -C
- id: l
  doc: "Load the tig(s) from files listed in 'file-of-files' (WARNING: program will\
    \ succeed if this file is empty)"
  type: File
  inputBinding:
    prefix: -L
- id: u
  doc: 'Also load the populated tig layout into version 2 of the corStore. (WARNING:
    not rigorously tested)'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- loadCorrectedReads

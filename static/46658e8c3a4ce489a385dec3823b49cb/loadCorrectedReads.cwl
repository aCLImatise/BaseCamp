class: CommandLineTool
id: ../../../loadCorrectedReads.cwl
inputs:
- id: path_sequence_store
  doc: Path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: path_correction_store
  doc: Path to a correction store
  type: string
  inputBinding:
    prefix: -C
- id: load_tigs_files
  doc: "Load the tig(s) from files listed in 'file-of-files' (WARNING: program will\
    \ succeed if this file is empty)"
  type: File
  inputBinding:
    prefix: -L
- id: also_load_layout
  doc: 'Also load the populated tig layout into version 2 of the corStore. (WARNING:
    not rigorously tested)'
  type: boolean
  inputBinding:
    prefix: -u
- id: input_dot_cns
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- loadCorrectedReads

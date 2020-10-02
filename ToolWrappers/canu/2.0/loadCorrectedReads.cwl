class: CommandLineTool
id: loadCorrectedReads.cwl
inputs:
- id: in_path_sequence_store
  doc: Path to a sequence store
  type: File
  inputBinding:
    prefix: -S
- id: in_path_correction_store
  doc: Path to a correction store
  type: File
  inputBinding:
    prefix: -C
- id: in_load_tigs_files
  doc: "Load the tig(s) from files listed in 'file-of-files'\n(WARNING: program will\
    \ succeed if this file is empty)"
  type: File
  inputBinding:
    prefix: -L
- id: in_also_load_layout
  doc: "Also load the populated tig layout into version 2 of the corStore.\n(WARNING:\
    \ not rigorously tested)"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_input_dot_cns
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
- loadCorrectedReads

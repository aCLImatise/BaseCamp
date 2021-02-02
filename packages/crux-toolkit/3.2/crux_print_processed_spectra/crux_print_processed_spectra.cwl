class: CommandLineTool
id: crux_print_processed_spectra.cwl
inputs:
- id: in_ms_two_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- print-processed-spectra

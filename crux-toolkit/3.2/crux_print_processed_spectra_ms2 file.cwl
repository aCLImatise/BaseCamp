class: CommandLineTool
id: crux_print_processed_spectra_ms2 file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- print-processed-spectra
- ms2 file

class: CommandLineTool
id: crux_print_processed_spectra_output file.cwl
inputs:
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- print-processed-spectra
- output file

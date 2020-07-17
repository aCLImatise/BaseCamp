class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crux_print_processed_spectra.cwl
inputs:
- id: ms_two_file
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

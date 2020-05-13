class: CommandLineTool
id: filter_corrected_reads.py_input_filename.cwl
inputs:
- id: coverage_threshold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_corrected_reads.py
- input_filename

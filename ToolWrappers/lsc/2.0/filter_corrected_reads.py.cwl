class: CommandLineTool
id: filter_corrected_reads.py.cwl
inputs:
- id: in_coverage_threshold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_corrected_reads.py

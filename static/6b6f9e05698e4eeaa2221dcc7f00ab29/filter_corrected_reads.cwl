class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_corrected_reads.py.cwl
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

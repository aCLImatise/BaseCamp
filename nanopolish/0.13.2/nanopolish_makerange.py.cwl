class: CommandLineTool
id: ../../../nanopolish_makerange.py.cwl
inputs:
- id: in_segment_length
  doc: ''
  type: long
  inputBinding:
    prefix: --segment-length
- id: in_overlap_length
  doc: ''
  type: long
  inputBinding:
    prefix: --overlap-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanopolish_makerange.py

class: CommandLineTool
id: matchGraph.py.cwl
inputs:
- id: in_is_input_filename
  doc: is the input filename
  type: File?
  inputBinding:
    prefix: -e
- id: in_is_output_filename
  doc: is the output filename
  type: File?
  inputBinding:
    prefix: -w
- id: in_max_cardinality_matching
  doc: the max cardinality matching
  type: long?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_is_output_filename
  doc: is the output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_is_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- matchGraph.py

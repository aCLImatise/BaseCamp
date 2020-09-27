class: CommandLineTool
id: get_simple_cycs.py.cwl
inputs:
- id: in_input
  doc: Input (SPAdes 3.50+) FASTG to process
  type: double
  inputBinding:
    prefix: --input
- id: in_min_length
  doc: "Minimum cycle length to keep (shorter cycles put in\nnew graph file; default\
    \ = 1000)\n"
  type: long
  inputBinding:
    prefix: --min_length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_simple_cycs.py

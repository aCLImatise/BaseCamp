class: CommandLineTool
id: merge_otu_results.py.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_pick_otus_results
  doc: "The result files from multiple runs of a pick otus\nscript that need to be\
    \ merged."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_otu_results.py

class: CommandLineTool
id: svm_subset.py.cwl
inputs:
- id: in_method_selection_default
  doc: ": method of selection (default 0)\n0 -- stratified selection (classification\
    \ only)\n1 -- random selection"
  type: long
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svm-subset.py

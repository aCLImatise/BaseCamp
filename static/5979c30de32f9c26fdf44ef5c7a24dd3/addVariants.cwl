class: CommandLineTool
id: addVariants.py_graph.cwl
inputs:
- id: graph
  doc: Input graph JSON file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output JSON file
  type: string
  inputBinding:
    position: 1
- id: variants
  doc: JSON file with variant calls to use instead of calls in input graph
  type: string
  inputBinding:
    prefix: --variants
- id: verbose
  doc: More logging; May be given twice for even more logging
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- addVariants.py
- graph

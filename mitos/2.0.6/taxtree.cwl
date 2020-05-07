class: CommandLineTool
id: taxtree.py.cwl
inputs:
- id: gb_dir
  doc: genbank directory
  type: string
  inputBinding:
    prefix: --gbdir
- id: names
  doc: names.dmp file to use
  type: string
  inputBinding:
    prefix: --names
- id: nodes
  doc: nodes.dmp file to use
  type: string
  inputBinding:
    prefix: --nodes
- id: merged
  doc: merged.dmp file to use
  type: string
  inputBinding:
    prefix: --merged
outputs: []
cwlVersion: v1.1
baseCommand:
- taxtree.py

class: CommandLineTool
id: make_ktaxonomy.py.cwl
inputs:
- id: nodes
  doc: nodes.dmp file from taxonomy
  type: string
  inputBinding:
    prefix: --nodes
- id: names
  doc: names.dmp file from taxonomy
  type: string
  inputBinding:
    prefix: --names
- id: seqid2taxid
  doc: seqid2taxid.map file
  type: string
  inputBinding:
    prefix: --seqid2taxid
- id: output
  doc: output taxonomy file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- make_ktaxonomy.py

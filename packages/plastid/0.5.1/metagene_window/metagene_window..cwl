class: CommandLineTool
id: metagene_window..cwl
inputs:
- id: in_meta_gene
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metagene
- window.

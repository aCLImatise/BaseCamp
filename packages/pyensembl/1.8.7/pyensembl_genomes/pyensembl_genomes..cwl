class: CommandLineTool
id: pyensembl_genomes..cwl
inputs:
- id: in_manipulate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_py_ensembl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyensembl
- genomes.
